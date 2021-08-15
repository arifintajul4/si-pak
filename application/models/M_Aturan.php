<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Aturan extends CI_Model {

    public function getAll()
    {
        $this->db->select('aturan.*');
        $this->db->from('aturan');
        $this->db->join('diagnosis', 'aturan.kd_diagnosis = diagnosis.kd_diagnosis');
        $this->db->join('solusi', 'aturan.kd_solusi = solusi.kd_solusi');
        return $this->db->get()->result_array();
    }

    public function getGejAwal()
    {
        $this->db->select('aturan.*, gejala.nama_gejala');
        $this->db->from('aturan');
        $this->db->join('gejala', 'aturan.kd_gejala1 = gejala.kd_gejala');
        $this->db->where('aturan.kd_gejala2', null);
        return $this->db->get()->result_array();
    }
	
    public function getPertanyaan($kd_gejala)
    {
        $this->db->select('aturan.*, gejala.nama_gejala');
        $this->db->from('aturan');
        $this->db->join('gejala', 'aturan.kd_gejala2 = gejala.kd_gejala');
        $this->db->where('kd_gejala1', $kd_gejala);
        $this->db->where('kd_gejala3', null);
        $this->db->order_by('kd_aturan', 'desc');
        return $this->db->get()->result_array();
    }

    public function getAturanGejala($kd_gejala1, $kd_gejala2){
        $this->db->where('kd_gejala1', $kd_gejala1);
        $this->db->where('kd_gejala2', $kd_gejala2);
        $this->db->where('kd_gejala3', null);
        return $this->db->get('aturan')->row_array();
    }

    public function getAturanGejalaTiga($kd_gejala1, $kd_gejala2, $kd_gejala3){
        $this->db->where('kd_gejala1', $kd_gejala1);
        $this->db->where('kd_gejala2', $kd_gejala2);
        $this->db->where('kd_gejala3', $kd_gejala3);
        return $this->db->get('aturan')->row_array();
    }
}
