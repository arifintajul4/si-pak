<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

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
        $data['diagnosis'] = $this->db->get('diagnosis')->num_rows();
        $data['gejala'] = $this->db->get('gejala')->num_rows();
        $data['solusi'] = $this->db->get('solusi')->num_rows();
        $data['konsul'] = $this->db->get('hasil')->num_rows();
		$this->template->load('admin/template', 'admin/index', $data);
	}
}
