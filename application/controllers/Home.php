<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		// var_dump(base_url()); die;
		$data['title'] = "Home";
		$this->template->load('home/template', 'home/index', $data);
	}

	public function about()
	{
		$data['title'] = "About";
		$this->template->load('home/template', 'home/about', $data);
	}

	public function kontak()
	{
		$data['title'] = "kontak";
		$this->template->load('home/template', 'home/kontak', $data);
	}
}
