<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class bass extends CI_Controller {
    
        public function __construct()
        {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->model('login_model');
        $this->load->model('bass_model');
        
        

        if($this->session->userdata('level')!="user"){
            redirect('login','refresh');
        }

        }

        public function index()
        {
            $data['title']='MUSIC SHOP';
            $data['name']='$name';
            $data['bass'] = $this->bass_model->getBassData();
            if($this->input->post('keyword')){
                $data['bass']=$this->bass_model->searchData();
            }
            $this->load->view('template/header_user', $data);
            $this->load->view('user/bass/index', $data);
            $this->load->view('template/footer_user');
        }

        public function detail($id)
        {
            $data['title']='Detail Data';
            $data['bass'] = $this->bass_model->getBassID($id);
            $this->load->view('template/header_user', $data);
            $this->load->view('user/bass/detail', $data);
            $this->load->view('template/footer_user');
        }
    
    }
    
    /* End of file user.php */
