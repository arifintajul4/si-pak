<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Solusi extends CI_Controller {

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
        $data['solusi'] = $this->db->get('solusi')->result_array();
        $dariDB =  $this->db->query("SELECT MAX(kd_solusi) as kd_solusi from solusi")->row_array()['kd_solusi'];
        $nourut = substr($dariDB, 2, 3);
        $kode = $nourut + 1;
        $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);    
        $data['kd_tampil'] = "S".$batas;
		$this->template->load('admin/template', 'admin/solusi', $data);
	}

    public function getDetail($id=''){
        echo json_encode($this->db->get_where('solusi', ['kd_solusi'=>$id])->row_array());
    }

    public function store()
    {
        if(isset($_POST['submit'])){
            $dariDB =  $this->db->query("SELECT MAX(kd_solusi) as kd_solusi from solusi")->row_array()['kd_solusi'];
            $nourut = substr($dariDB, 2, 3);
            $kode = $nourut + 1;
            $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);    
            $kd_solusi = "S".$batas;
            $data = [
                'kd_solusi' => $kd_solusi,
                'nama_solusi' => $this->input->post('nama_solusi')
            ];

            if($this->db->insert('solusi', $data)){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Data</div>');
                redirect('/solusi');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Tambah Data, Coba Lagi!</div>');
                redirect('/solusi');
            }
        }else{
            redirect('/solusi');
        }
    }

    public function update($id='')
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_solusi' => $this->input->post('kd_solusi'),
                'nama_solusi' => $this->input->post('nama_solusi')
            ];

            if($this->db->update('solusi', $data, ['kd_solusi'=>$id])){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Ubah Data</div>');
                redirect('/solusi');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Ubah Data, Coba Lagi!</div>');
                redirect('/solusi');
            }
        }else{
            redirect('/solusi');
        }
    }

    public function hapus($id=''){
        if($this->db->delete('solusi', ['kd_solusi'=>$id])){
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Data</div>');
            redirect('/solusi');
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Hapus Data, Coba Lagi!</div>');
            redirect('/solusi');
        }
    }
}
