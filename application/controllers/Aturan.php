<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Aturan extends CI_Controller {

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
        $data['aturan'] = $this->db->get('aturan')->result_array();
        $data['gejala'] = $this->db->get('gejala')->result_array();
        $data['solusi'] = $this->db->get('solusi')->result_array();
        $data['diagnosis'] = $this->db->get('diagnosis')->result_array();
		$this->template->load('admin/template', 'admin/aturan', $data);
	}

    public function getDetail($id=''){
        echo json_encode($this->db->get_where('aturan', ['kd_aturan'=>$id])->row_array());
    }

    public function store()
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_gejala1' => $this->input->post('kd_gejala1'),
                'kd_gejala2' => $this->input->post('kd_gejala2'),
                'kd_gejala3' => $this->input->post('kd_gejala3'),
                'kd_diagnosis' => $this->input->post('kd_diagnosis'),
                'kd_solusi' => $this->input->post('kd_solusi'),
            ];

            if($this->db->insert('aturan', $data)){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Data</div>');
                redirect('/aturan');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Tambah Data, Coba Lagi!</div>');
                redirect('/aturan');
            }
        }else{
            redirect('/aturan');
        }
    }

    public function update($id='')
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_gejala1' => $this->input->post('kd_gejala1'),
                'kd_gejala2' => $this->input->post('kd_gejala2'),
                'kd_gejala3' => $this->input->post('kd_gejala3'),
                'kd_diagnosis' => $this->input->post('kd_diagnosis'),
                'kd_solusi' => $this->input->post('kd_solusi'),
            ];

            if($this->db->update('aturan', $data, ['kd_aturan'=>$id])){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Ubah Data</div>');
                redirect('/aturan');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Ubah Data, Coba Lagi!</div>');
                redirect('/aturan');
            }
        }else{
            redirect('/aturan');
        }
    }

    public function hapus($id=''){
        if($this->db->delete('aturan', ['kd_aturan'=>$id])){
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Data</div>');
            redirect('/aturan');
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Hapus Data, Coba Lagi!</div>');
            redirect('/aturan');
        }
    }
}
