<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class piano extends CI_Controller {
    
        public function __construct()
        {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->model('login_model');
        $this->load->model('piano_model');
        
        

        if($this->session->userdata('level')!="user"){
            redirect('login','refresh');
        }

        }

        public function index()
        {
            $data['title']='MUSIC SHOP';
            $data['name']='$name';
            $data['piano'] = $this->piano_model->getPianoData();
            if($this->input->post('keyword')){
                $data['piano']=$this->piano_model->searchData();
            }
            $this->load->view('template/header_user', $data);
            $this->load->view('user/piano/index', $data);
            $this->load->view('template/footer_user');
        }

        public function detail($id)
        {
            $data['title']='Detail Data';
            $data['piano'] = $this->piano_model->getPianoID($id);
            $this->load->view('template/header_user', $data);
            $this->load->view('user/piano/detail', $data);
            $this->load->view('template/footer_user');
        }
    
    }
    
    /* End of file user.php */
