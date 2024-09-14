<?php
 
 
class Admin_model extends CI_Model{
 
    public function __construct()
    {
        $this->load->database();
        $this->load->helper('url');
    }
 
    /*
        Get all the records from the database
    */
    public function get_all_users($table_name)
    {
        $users = $this->db->get_where($table_name, array('status' => "1") )->result_array();
        return $users;
    }

    public function get_all()
    {
        $incomes = $this->db->get("incomes")->result();
        return $incomes;
    }
 
    /*
        Get an specific record from the database
    */
    public function get($id)
    {
        $project = $this->db->get_where('incomes', ['id' => $id ])->row();
        return $project;
    }

    public function get_data($table, $whr, $type = '', $order_column = '', $order_type = '') 
    {
        $data=array();  
        if($order_column != '' && $order_type != '')
        $this -> db ->order_by($order_column, $order_type);

        $query = $this->db->select('*')->from($table)->where($whr)->get();
        
        if($query->num_rows()>0 ) {
        if (!empty($type)) 
            $data = $query->$type();
        else
            $data = $query->result();

        return $data;
        } else {
        return $data;
        }       
    }
 
 
    /*
        Update or Modify a record in the database
    */
    public function update_row_data($table_name,$condition, $array) 
    {
        $this->db->where($condition);
        if($this->db->update($table_name, $array)){
            return true;}
        else
            return false;
    }

    public function insert_row($table,$data) 
    {
        if($this->db->insert($table, $data))
            return $this->db->insert_id();
        else
            return false;
    }
 
    public function get_income_users(){
        $sql = "SELECT u.id, u.name, u.phone_number FROM `incomes` as inc join users as u on u.id=inc.user_id GROUP by inc.user_id";
        $query = $this->db->query($sql);

        if($query->num_rows() > 0 )
            return $query->result_array();
        else
            return false;
    }

    public function get_all_incomes(){

        $sql = "select u.name, u.id,
                    sum(COALESCE( case when amount_type = 'DEB' then amount END, 0)) as total_credit,
                    sum(COALESCE( case when amount_type = 'CRE' then amount END, 0)) as total_debit,
                    sum(COALESCE( case when amount_type = 'DEB' then amount END, 0)) - sum(COALESCE( case when amount_type = 'CRE' then amount END, 0)) as total_available 
                from incomes as inc
                join users as u 
                    on u.id = inc.user_id
                    and inc.status = 1
                group by inc.user_id";

        $query = $this->db->query($sql);

        if($query->num_rows() > 0 )
            return $query->result_array();
        else
            return false;
    }

    public function get_outcome_users(){
        $sql = "SELECT u.id, u.name, u.phone_number FROM `outcomes` as inc join users as u on u.id=inc.user_id GROUP by inc.user_id";
        $query = $this->db->query($sql);

        if($query->num_rows() > 0 )
            return $query->result_array();
        else
            return false;
    }

    public function get_all_outcomes(){

        $sql = "select u.name, u.id,
                    sum(COALESCE( case when amount_type = 'DEB' then amount END, 0)) as total_credit,
                    sum(COALESCE( case when amount_type = 'CRE' then amount END, 0)) as total_debit,
                    sum(COALESCE( case when amount_type = 'DEB' then amount END, 0)) - sum(COALESCE( case when amount_type = 'CRE' then amount END, 0)) as total_available 
                from outcomes as inc
                join users as u 
                    on u.id = inc.user_id
                    and inc.status = 1
                group by inc.user_id";

        $query = $this->db->query($sql);

        if($query->num_rows() > 0 )
            return $query->result_array();
        else
            return false;
    }

    public function get_all_sales($all){
        
        $today_date   = date("Y-m-d");
        if($all == 'today')
            $where = "AND DATE(ds.date_added) = '".$today_date."'";
        else
            $where = "";
        
        $sql = "SELECT e.name, ds.* FROM daily_sales as ds
                JOIN employees as e  ON e.id = ds.emp_id AND ds.status = 1 $where
                order by ds.date_added desc";

        $query = $this->db->query($sql);
        //echo $this->db->last_query();

        if($query->num_rows() > 0 )
            return $query->result_array();
        else
            return false;
    }
	
	public function get_sales_stats(){
        $today_date   = date("Y-m-d");
        $sql = "SELECT 
                    sum(COALESCE( case when amount_type = 'inc' then amount END, 0)) as today_income,
                    sum(COALESCE( case when amount_type = 'exp' then amount END, 0)) as today_expense,
					sum(COALESCE( case when amount_type = 'exp' then amount END, 0)) as today_expense,
                    sum(COALESCE( case when amount_type = 'inc' then amount END, 0)) - sum(COALESCE( case when amount_type = 'exp' then amount END, 0)) as today_available 
                FROM daily_sales WHERE status = 1 AND amount_mode = 'cash' AND DATE(date_added) = '".$today_date."'";

        $query = $this->db->query($sql);

        if($query->num_rows() > 0 )
            return $query->row();
        else
            return false;
    }
	
	public function get_gpay_stats(){
        $today_date   = date("Y-m-d");
        $sql = "SELECT 
                    sum(COALESCE( case when amount_mode = 'gpay' then amount END, 0)) as today_gpay
                FROM daily_sales WHERE status = 1 AND DATE(date_added) = '".$today_date."'";

        $query = $this->db->query($sql);

        if($query->num_rows() > 0 )
            return $query->row();
        else
            return false;
    }
     
}
?>