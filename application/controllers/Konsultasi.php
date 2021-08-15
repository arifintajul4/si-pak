<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konsultasi extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Aturan');
    }

	public function index()
	{
		$data['title'] = "Konsultasi";
		$data['gejala'] = $this->db->get_where('gejala', ['is_first'=>'1'])->result_array();
		$this->template->load('home/template', 'home/konsultasi/index', $data);
	}

	public function getPertanyaan()
	{
		if(isset($_POST['kd_gejala'])){
			echo json_encode($this->M_Aturan->getPertanyaan($_POST['kd_gejala']));
		}else{
			redirect('/konsultasi');
		}
	}

	public function getsolusi($kd_solusi=''){
		if($kd_solusi!==''){
			echo json_encode($this->db->get_where('solusi', ['kd_solusi'=>$kd_solusi])->row_array()['nama_solusi']);
		}else{
			redirect('/konsultasi');
		}
	}

	public function hitung(){
		
		if(isset($_POST['kd_gejala'])){
			$gejala = json_decode($_POST['kd_gejala']);
			// $gejala = ['G001', 'G002', 'G003'];
			// var_dump(count($gejala)); die;
			$nilai_cf = [];
			if(count($gejala) > 1){
				foreach($gejala as $key => $row){
		
					if($key !== 0){
						$ketemu = 0;
						for($i=0; $i<count($gejala); $i++){
							//G001
							if($this->db->get_where('aturan', ['kd_gejala1'=>$gejala[0], 'kd_gejala2'=>$row,'kd_gejala3'=>$gejala[$i]])->row_array() !== null) 
							{
								$aturan = $this->M_Aturan->getAturanGejalaTiga($gejala[0], $row, $gejala[$i]);
								if($aturan !== null){
									$basis1 = $this->db->get_where('basis_pengetahuan', ['kd_gejala'=>$aturan['kd_gejala1'], 'kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array();
									$basis2 = $this->db->get_where('basis_pengetahuan', ['kd_gejala'=>$aturan['kd_gejala2'], 'kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array();
									$basis3 = $this->db->get_where('basis_pengetahuan', ['kd_gejala'=>$aturan['kd_gejala3'], 'kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array();
									
									$cf1 = (float)$basis1['nilai_mb'] - (float)$basis1['nilai_md'];
									$cf2 = (float)$basis2['nilai_mb'] - (float)$basis2['nilai_md'];
									$cf3 = (float)$basis3['nilai_mb'] - (float)$basis3['nilai_md'];
	
									$old = $cf1 + ($cf2 * (1 -$cf1));
									$hasil = $old + ($cf3 * (1 -$old));
	
									$data['diagnosis'] = $this->db->get_where('diagnosis', ['kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array()['nama_diagnosis'];
									$data['kd_diagnosis'] = $aturan['kd_diagnosis'];
									$data['solusi'] = $this->db->get_where('solusi', ['kd_solusi'=>$aturan['kd_solusi']])->row_array()['nama_solusi'];
									$data['nilai_cf'] = number_format($hasil, 2);
									array_push($nilai_cf, $data);
								}
							}else if($this->db->get_where('aturan', ['kd_gejala1'=>$gejala[0], 'kd_gejala2'=>$row, 'kd_gejala3'=>null])->row_array() !== null) //G001, G003
							{
								if($ketemu !== $row){
									$aturan = $this->M_Aturan->getAturanGejala($gejala[0], $row);
									if($aturan !== null){
										$basis1 = $this->db->get_where('basis_pengetahuan', ['kd_gejala'=>$aturan['kd_gejala1'], 'kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array();
										$basis2 = $this->db->get_where('basis_pengetahuan', ['kd_gejala'=>$aturan['kd_gejala2'], 'kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array();
										
										$cf1 = (float)$basis1['nilai_mb'] - (float)$basis1['nilai_md'];
										$cf2 = (float)$basis2['nilai_mb'] - (float)$basis2['nilai_md'];
		
										$hasil = $cf1 + ($cf2 * (1 -$cf1));
										$data['diagnosis'] = $this->db->get_where('diagnosis', ['kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array()['nama_diagnosis'];
										$data['kd_diagnosis'] = $aturan['kd_diagnosis'];
										$data['solusi'] = $this->db->get_where('solusi', ['kd_solusi'=>$aturan['kd_solusi']])->row_array()['nama_solusi'];
										$data['nilai_cf'] = number_format($hasil, 2);
										array_push($nilai_cf, $data);
									}
								}
								$ketemu = $row;
							}
							
						}
					}
					
				}
			}else{
				$aturan = $this->M_Aturan->getAturanGejala($gejala[0], null);
				$basis = $this->db->get_where('basis_pengetahuan', ['kd_gejala'=>$aturan['kd_gejala1'], 'kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array();
				
				$hasil = (float)$basis['nilai_mb'] - (float)$basis['nilai_md'];

				$data['gejala'] = $this->db->get_where('gejala', ['kd_gejala'=>$aturan['kd_gejala1']])->row_array()['nama_gejala'];
				$data['diagnosis'] = $this->db->get_where('diagnosis', ['kd_diagnosis'=>$aturan['kd_diagnosis']])->row_array()['nama_diagnosis'];
				$data['kd_diagnosis'] = $aturan['kd_diagnosis'];
				$data['solusi'] = $this->db->get_where('solusi', ['kd_solusi'=>$aturan['kd_solusi']])->row_array()['nama_solusi'];
				$data['nilai_cf'] = number_format($hasil, 2);
				array_push($nilai_cf, $data);
			}
			
			function order_by_cf($a, $b) {
				return $b['nilai_cf'] > $a['nilai_cf'] ? 1 : -1;
			}

			usort($nilai_cf, 'order_by_cf');

			$tmp_gejala = [];
			for($i=0; $i < count($gejala); $i++){
				$res = $this->db->get_where('gejala', ['kd_gejala'=>$gejala[$i]])->row_array()['nama_gejala'];
				array_push($tmp_gejala, $res);
			}

			if($this->db->insert('hasil', ['tanggal'=>date("Y-m-d")])){
				$insert_id = $this->db->insert_id();
				for($i=0; $i<count($nilai_cf); $i++){
					$db = [
						'id_hasil' => $insert_id,
						'gejala' => $tmp_gejala[$i],
						'diagnosis' => $nilai_cf[$i]['diagnosis'],
						'kd_diagnosis' => $nilai_cf[$i]['kd_diagnosis'],
						'solusi' => $nilai_cf[$i]['solusi'],
						'nilai_cf' => $nilai_cf[$i]['nilai_cf']
					];
					$this->db->insert('riwayat',$db);
				}
				echo json_encode($nilai_cf);
			}else{
				echo json_encode(['status'=>'error', 'message'=>'terjadi kesalaha']);
			}
		}
	}

	public function getGejalaName()
	{	
		if(isset($_POST['kd_gejala'])){
			$gejala = json_decode($_POST['kd_gejala']);
			$result = [];
			for($i=0; $i < count($gejala); $i++){
				$res = $this->db->get_where('gejala', ['kd_gejala'=>$gejala[$i]])->row_array()['nama_gejala'];
				array_push($result, $res);
			}
			echo json_encode($result);
		}
	}

	public function cetak(){
		$id_hasil = $this->db->order_by('id', 'desc')->get('hasil')->row_array()['id'];
		$data['hasil'] = $this->db->get_where('riwayat', ['id_hasil'=>$id_hasil])->result_array();
		$tgl = date('d-m-Y');
		$this->load->library('pdf');
		$this->pdf->setPaper('A4', 'potrait');
		$this->pdf->filename = "riwayat-konsultasi-$tgl.pdf";
		$this->pdf->load_view('home/konsultasi/cetak', $data);
	}
}
