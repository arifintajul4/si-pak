<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BasisPengetahuan extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
        $this->load->model('M_BasisPengetahuan');
    }

	public function index()
	{
		$data['title'] = "Admin";
        $data['basis_pengetahuan'] = $this->M_BasisPengetahuan->getAll();
        // var_dump($data['basis_pengetahuan']); die;
        $data['diagnosis'] = $this->db->get('diagnosis')->result_array();
        $data['gejala'] = $this->db->get('gejala')->result_array();
		$this->template->load('admin/template', 'admin/basis-pengetahuan', $data);
	}

    public function getDetail($id=''){
        echo json_encode($this->db->get_where('basis_pengetahuan', ['kd_basis_pengetahuan'=>$id])->row_array());
    }

    public function store()
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_diagnosis' => $this->input->post('kd_diagnosis'),
                'kd_gejala' => $this->input->post('kd_gejala'),
                'nilai_mb' => $this->input->post('nilai_mb'),
                'nilai_md' => $this->input->post('nilai_md'),
            ];

            if($this->db->insert('basis_pengetahuan', $data)){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Data</div>');
                redirect('/basispengetahuan');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Tambah Data, Coba Lagi!</div>');
                redirect('/basispengetahuan');
            }
        }else{
            redirect('/basispengetahuan');
        }
    }

    public function update($id='')
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_diagnosis' => $this->input->post('kd_diagnosis'),
                'kd_gejala' => $this->input->post('kd_gejala'),
                'nilai_mb' => $this->input->post('nilai_mb'),
                'nilai_md' => $this->input->post('nilai_md'),
            ];

            if($this->db->update('basis_pengetahuan', $data, ['kd_basis_pengetahuan'=>$id])){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Ubah Data</div>');
                redirect('/basispengetahuan');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Ubah Data, Coba Lagi!</div>');
                redirect('/basispengetahuan');
            }
        }else{
            redirect('/basispengetahuan');
        }
    }

    public function hapus($id=''){
        if($this->db->delete('basis_pengetahuan', ['kd_basis_pengetahuan'=>$id])){
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Data</div>');
            redirect('/basispengetahuan');
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Hapus Data, Coba Lagi!</div>');
            redirect('/basispengetahuan');
        }
    }
}
