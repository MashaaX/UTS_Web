<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class guitar extends CI_Controller {
    
        public function __construct()
        {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->model('login_model');
        $this->load->model('guitar_model');
        
        if($this->session->userdata('level')!="user"){
            redirect('login','refresh');
        }

        }
        // To get guitar data
        public function index()
        {
            $data['title']='MUSIC SHOP';
            $data['name']='$name';
            $data['guitar'] = $this->guitar_model->getGuitarData();
            if($this->input->post('keyword')){
                $data['guitar']=$this->guitar_model->searchData();
            }
            $this->load->view('template/header_user', $data);
            $this->load->view('user/guitar/index', $data);
            $this->load->view('template/footer_user');
        }

        // for function button to get done
        public function detail($id)
        {
            $data['title']='Detail Data';
            $data['guitar'] = $this->guitar_model->getGuitarID($id);
            $this->load->view('template/header_user', $data);
            $this->load->view('user/guitar/detail', $data);
            $this->load->view('template/footer_user');
        }
    }
    
    /* End of file user.php */
