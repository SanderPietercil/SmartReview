<?php
	class pages extends CI_Controller {
		public function view($page = 'home'){
			if(!file_exists(APPPATH.'views/pages/'.$page.'.php')){
				show_404();
			}

			$data['title'] = ucfirst($page);
			$data['categories'] = $this->category_model->get_categories();
			$this->load->view('templates/header', $data);
			$this->load->view('pages/'.$page, $data);
			$this->load->view('templates/footer');
		}
	}