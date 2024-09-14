<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Frontend extends CI_Controller {
	
	public function __construct() {
      parent::__construct(); 
      $this->load->library('form_validation');
      $this->load->library('session');
	}
	
	public function index()
	{
		$this->load->view('index');
	}

	public function about()
	{
		$this->load->view('config/template_start');
		$this->load->view('config/page_head');
		$this->load->view('about');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function services()
	{
		$this->load->view('config/template_start');
		$this->load->view('config/page_head');
		$this->load->view('services');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function projects()
	{
		$this->load->view('config/template_start');
		$this->load->view('config/page_head');
		$this->load->view('projects');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function project_details()
	{
		$this->load->view('config/template_start');
		$this->load->view('config/page_head');
		$this->load->view('project_details');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function blogs()
	{
		$this->load->view('config/template_start');
		$this->load->view('config/page_head');
		$this->load->view('blogs');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function contact()
	{
		$this->load->view('config/template_start');
		$this->load->view('config/page_head');
		$this->load->view('contact');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}
	
}
