<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Diagnosis extends CI_Controller {

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
        $data['diagnosis'] = $this->db->get('diagnosis')->result_array();
        $dariDB =  $this->db->query("SELECT MAX(kd_diagnosis) as kd_diagnosis from diagnosis")->row_array()['kd_diagnosis'];
        $nourut = substr($dariDB, 2, 3);
        $kode = $nourut + 1;
        $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);    
        $data['kd_tampil'] = "D".$batas;
		$this->template->load('admin/template', 'admin/diagnosis', $data);
	}

    public function getDetail($id=''){
        echo json_encode($this->db->get_where('diagnosis', ['kd_diagnosis'=>$id])->row_array());
    }

    public function store()
    {
        if(isset($_POST['submit'])){
            $dariDB =  $this->db->query("SELECT MAX(kd_diagnosis) as kd_diagnosis from diagnosis")->row_array()['kd_diagnosis'];
            $nourut = substr($dariDB, 2, 3);
            $kode = $nourut + 1;
            $batas = str_pad($kode, 3, "0", STR_PAD_LEFT);    
            $kd_diagnosis = "D".$batas;
            $data = [
                'kd_diagnosis' => $kd_diagnosis,
                'nama_diagnosis' => $this->input->post('nama_diagnosis')
            ];

            if($this->db->insert('diagnosis', $data)){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Data</div>');
                redirect('/diagnosis');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Tambah Data, Coba Lagi!</div>');
                redirect('/diagnosis');
            }
        }else{
            redirect('/diagnosis');
        }
    }

    public function update($id='')
    {
        if(isset($_POST['submit'])){
            $data = [
                'kd_diagnosis' => $this->input->post('kd_diagnosis'),
                'nama_diagnosis' => $this->input->post('nama_diagnosis')
            ];

            if($this->db->update('diagnosis', $data, ['kd_diagnosis'=>$id])){
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Ubah Data</div>');
                redirect('/diagnosis');
            }else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Ubah Data, Coba Lagi!</div>');
                redirect('/diagnosis');
            }
        }else{
            redirect('/diagnosis');
        }
    }

    public function hapus($id=''){
        if($this->db->delete('diagnosis', ['kd_diagnosis'=>$id])){
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Data</div>');
            redirect('/diagnosis');
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal Hapus Data, Coba Lagi!</div>');
            redirect('/diagnosis');
        }
    }
}
