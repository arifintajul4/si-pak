<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gejala extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
    }

	public function index()
	{
		$data['title'] = "Admin";
        $data['gejala'] = $this->db->get('gejala')->result_array();
        $dariDB =  $this->db->query("SELECT MAX(kd_gejala) as kd_gejala from gejala")->row_array()['kd_gejala'];
        $nourut = substr($dariDB, 2, 3);
        $kode = $nourut + 1;
        $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);    
        $data['kd_tampil'] = "G".$batas;
		$this->template->load('admin/template', 'admin/gejala', $data);
	}

    public function getDetail($id=''){
        echo json_encode($this->db->get_where('gejala', ['kd_gejala'=>$id])->row_array());
    }

    public function store()
    {
        if(isset($_POST['submit'])){
            $dariDB =  $this->db->query("SELECT MAX(kd_gejala) as kd_gejala from gejala")->row_array()['kd_gejala'];
            $nourut = substr($dariDB, 2, 3);
            $kode = $nourut + 1;
            $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);      
            $kd_gejala = "G".$batas;
            $data = [
                'kd_gejala' => $kd_gejala,
                'nama_gejala' => $this->input->post('nama_gejala'),
                'is_first' => $this->input->post('is_first') == true ? 1:0,
            ];

            if($this->db->insert('gejala', $data)){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Data</div>');
                redirect('/gejala');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Tambah Data, Coba Lagi!</div>');
                redirect('/gejala');
            }
        }else{
            redirect('/gejala');
        }
    }

    public function update($id='')
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_gejala' => $this->input->post('kd_gejala'),
                'nama_gejala' => $this->input->post('nama_gejala'),
                'is_first' => $this->input->post('is_first') == true ? 1:0,
            ];

            if($this->db->update('gejala', $data, ['kd_gejala'=>$id])){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Ubah Data</div>');
                redirect('/gejala');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Ubah Data, Coba Lagi!</div>');
                redirect('/gejala');
            }
        }else{
            redirect('/gejala');
        }
    }

    public function hapus($id=''){
        if($this->db->delete('gejala', ['kd_gejala'=>$id])){
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Data</div>');
            redirect('/gejala');
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Hapus Data, Coba Lagi!</div>');
            redirect('/gejala');
        }
    }
}
