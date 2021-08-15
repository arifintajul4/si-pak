<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_BasisPengetahuan extends CI_Model {

    public function getAll()
    {
        $this->db->select('basis_pengetahuan.*, diagnosis.nama_diagnosis, gejala.nama_gejala');
        $this->db->from('basis_pengetahuan');
        $this->db->join('diagnosis', 'basis_pengetahuan.kd_diagnosis = diagnosis.kd_diagnosis');
        $this->db->join('gejala', 'basis_pengetahuan.kd_gejala = gejala.kd_gejala');
        return $this->db->get()->result_array();
    }
	
}
