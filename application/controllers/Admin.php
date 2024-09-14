<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require FCPATH.'vendor/autoload.php';
class Admin extends CI_Controller {
	
	public function __construct() {
      parent::__construct(); 
      $this->load->library('form_validation');
      $this->load->library('session');
	  
	  date_default_timezone_set('Asia/Kolkata'); 

	  if(!$this->session->userdata('user_loggedin'))
		{
			redirect(base_url('login'), 'refresh');
		}
	}
	
	public function index()
	{
		redirect(base_url('dashboard'));
	}

	public function dashboard()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$data['users'] = $this->admin_model->get_all_users('users');
		$data['employees'] = $this->admin_model->get_all_users('employees');
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('index', $data);
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function incomes()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$data['users'] = $this->admin_model->get_income_users();
		$data['incomes'] = $this->admin_model->get_all_incomes();
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('income_list', $data);
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function insert_income_data(){
		
		$type = $this->input->post('insert_type');

		if($type == 'new'){
			$user_data = array(
				'name' => $this->input->post('income_user_name'),
				'phone_number' => $this->input->post('income_user_phone')
			);

			$insertId = $this->admin_model->insert_row('users', $user_data);
			$data = array(
				'user_id' => $insertId,
				'amount' => $this->input->post('income_amt_value'),
				'amount_type' => 'DEB',
				'date_added' => date("Y-m-d H:i:s")
			);
		} else {
			$user_id = $this->input->post('old_user_id');
			$data = array(
				'user_id' => $user_id,
				'amount' => $this->input->post('old_income_amt'),
				'amount_type' => 'CRE',
				'date_added' => date("Y-m-d H:i:s")
			);
		}

		$insert = $this->admin_model->insert_row('incomes', $data);
		if($insert){
			redirect('incomes');
		}
	}

	public function outcomes()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$data['users'] = $this->admin_model->get_outcome_users();
		$data['outcomes'] = $this->admin_model->get_all_outcomes();
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('outcome_list', $data);
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function insert_outcome_data(){
		
		$type = $this->input->post('insert_type');

		if($type == 'new'){
			$user_data = array(
				'name' => $this->input->post('income_user_name'),
				'phone_number' => $this->input->post('income_user_phone')
			);

			$insertId = $this->admin_model->insert_row('users', $user_data);
			$data = array(
				'user_id' => $insertId,
				'amount' => $this->input->post('income_amt_value'),
				'amount_type' => 'DEB',
				'date_added' => date("Y-m-d H:i:s")
			);
		} else {
			$user_id = $this->input->post('old_user_id');
			$data = array(
				'user_id' => $user_id,
				'amount' => $this->input->post('old_income_amt'),
				'amount_type' => 'CRE',
				'date_added' => date("Y-m-d H:i:s")
			);
		}

		$insert = $this->admin_model->insert_row('outcomes', $data);
		if($insert){
			redirect('outcomes');
		}
	}

	public function users()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$data['users'] = $this->admin_model->get_all_users('users');
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('users_list', $data);
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function user_profile()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('user_profile');
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function delete_row(){
		
		$user_id = $this->input->post('userId');
		$tbl_name = $this->input->post('tbl_name');

		if($tbl_name == 'users' || $tbl_name == 'employees')
			$where = array('id' => $user_id );
		else
			$where = array('user_id' => $user_id );

		if($user_id){
			$update = $this->admin_model->update_row_data($tbl_name, $where, array('status' => 2 ));
		}

	}
	
	public function update_user(){
		
		$user_id = $this->input->post('user_id');
		$where = array('id' => $user_id );
		$data = array(
			'name' => $this->input->post('user_name'),
			'phone_number' => $this->input->post('user_phone'),
			'date_modified' => date("Y-m-d H:i:s")
		);
		
		$insert = $this->admin_model->update_row_data('users', $where, $data);
		if($insert){
			redirect(base_url('dashboard'));
		}
	}

	public function update_employee(){
		
		$user_id = $this->input->post('emp_id');
		$where = array('id' => $user_id );
		$data = array(
			'name' => $this->input->post('emp_name'),
			'phone_number' => $this->input->post('emp_phone'),
			'date_modified' => date("Y-m-d H:i:s")
		);
		
		$insert = $this->admin_model->update_row_data('employees', $where, $data);
		if($insert){
			redirect(base_url('dashboard'));
		}
	}

	public function daily_sales()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$data['employees'] = $this->admin_model->get_all_users('employees');
		$data['daily_sales'] = $this->admin_model->get_all_sales('today');
		$data['today_stats'] = $this->admin_model->get_sales_stats();
		$data['gpay_stats'] = $this->admin_model->get_gpay_stats();
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('daily_sales', $data);
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}
	
	public function insert_sales(){
		$data = array(
				'emp_id' => $this->input->post('emp_id'),
				'description' => $this->input->post('sale_desc'),
				'amount' => $this->input->post('sale_amt'),
				'amount_type' => $this->input->post('sale_type'),
				'amount_mode' => $this->input->post('amount_mode'),
				'date_added' => date("Y-m-d H:i:s")
			);
		
		$insert = $this->admin_model->insert_row('daily_sales', $data);
		if($insert){
			redirect('daily_sales');
		}
	}
	
	public function insert_expense(){
		$data = array(
				'emp_id' => $this->input->post('emp_id'),
				'description' => $this->input->post('sale_desc'),
				'amount' => $this->input->post('sale_amt'),
				'amount_type' => $this->input->post('sale_type'),
				'amount_mode' => 'cash',
				'date_added' => date("Y-m-d H:i:s")
			);
		
		$insert = $this->admin_model->insert_row('daily_sales', $data);
		if($insert){
			redirect('daily_sales');
		}
	}

	public function delete_sales(){
		
		$user_id = $this->input->post('userId');
		$tbl_name = $this->input->post('tbl_name');

		$where = array('id' => $user_id );

		if($user_id){
			$update = $this->admin_model->update_row_data($tbl_name, $where, array('status' => 2 ));
		}

	}

	public function full_report()
	{
		$data['session_user'] = $this->session->userdata('user_loggedin');
		$data['daily_sales'] = $this->admin_model->get_all_sales('all');
		$this->load->view('config/template_start');
		$this->load->view('config/page_head',$data);
		$this->load->view('full_report', $data);
		$this->load->view('config/page_footer');
		$this->load->view('config/template_scripts');
		$this->load->view('config/template_end');
	}

	public function print($type)
    {
		if($type == 'today'){
			$file_name = 'DailySalesReport.pdf';
			$data['day_type'] = 'Daily';
		}
		else{
			$file_name = 'OverallSalesReport.pdf';
			$data['day_type'] = 'Overall';
		}

		$data['base_url'] = base_url();
		$data['daily_sales'] = $this->admin_model->get_all_sales($type);
        $html = $this->load->view('sales_pdf',$data,true);
        $mpdf = new \Mpdf\Mpdf([
            'format'=>'A4',
            'margin_top'=>5,
            'margin_right'=>5,
            'margin_left'=>5,
            'margin_bottom'=>5,
        ]);
        $mpdf->WriteHTML($html);
		$mpdf->Output($file_name, 'D'); 
    }
	public function print_test()
    {
		$data['base_url'] = base_url();
		$data['daily_sales'] = $this->admin_model->get_all_sales('all');
        $this->load->view('sales_pdf',$data);
    
    }
}
