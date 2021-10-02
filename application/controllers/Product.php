<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		is_admin();
		$this->load->model('product_model', 'product');
	}
	
	public function index()
	{
		$data['title']		= 'Products';
		$data['product']	= $this->product->getAllProduct();
		$data['page']		= 'pages/product/index';

		$this->load->view('layouts/app', $data);
	}

	public function add()
	{
		$this->form_validation->set_rules('name', 'News name', 'required',[
			'required' => 'News name is required.',
		]);
		$this->form_validation->set_rules('date', 'Date', 'required',[
			'required' => 'Date is required.',
		]);
		$this->form_validation->set_rules('description', 'Description', 'required',[
			'required' => 'Description is required.',
		]);
		$this->form_validation->set_rules('address', 'Address', 'required',[
			'required' => 'Address is required.',
		]);

		if($this->form_validation->run() == false) {
			$data['title']	= 'Add News';
			$data['page']	= 'pages/product/add';
			$this->load->view('layouts/app', $data);
		}else {
			$data = [
				'name'			=> $this->input->post('name'),
				'date'			=> $this->input->post('date'),
				'edition'		=> $this->input->post('edition'),
				'description'	=> $this->input->post('description'),
				'address'	=> $this->input->post('address'),
			];

			if(!empty($_FILES['image']['name'])){
				$upload = $this->product->uploadImage();	
				$data['image'] = $upload;
			}

			$this->product->insertProduct($data);
			$this->session->set_flashdata('success', 'News succesfully added.');

			redirect(base_url('product'));
		}
	}

	public function edit($id) {
		$this->form_validation->set_rules('name', 'News name', 'required',[
			'required' => 'News name is required.',
		]);
		$this->form_validation->set_rules('date', 'Date', 'required',[
			'required' => 'Date is required.',
		]);
		$this->form_validation->set_rules('description', 'Description', 'required',[
			'required' => 'Description is required.',
		]);
		$this->form_validation->set_rules('address', 'Address', 'required',[
			'required' => 'Address is required.',
		]);

		if($this->form_validation->run() == false) {
			$data['title']		= 'Update News';
			$data['page']		= 'pages/product/edit';
			$data['product']	= $this->product->getProduct($id);
			$this->load->view('layouts/app', $data);
		}else {
			$id = $this->input->post('id');
			$data = [
				'name'			=> $this->input->post('name'),
				'date'			=> $this->input->post('date'),
				'edition'		=> $this->input->post('edition'),
				'description'	=> $this->input->post('description'),
				'address'	=> $this->input->post('address'),
			];

			if(!empty($_FILES['image']['name'])){
				$upload 	 = $this->product->uploadImage();
				if($upload){
					$productImage = $this->product->getProduct($id);
					if(file_exists('images/news/' . $productImage['image']) && $productImage['image']){
						unlink('images/news/' . $productImage['image']);
					}
					
					$data['image'] = $upload;
				}else{
					redirect(base_url('product/edit'));
				}
			}

			$this->product->updateProduct($id, $data);
			$this->session->set_flashdata('success', 'News succesfully updated.');

			redirect(base_url('product'));
		}
	}

	public function delete($id) {
		$produk = $this->product->getProduct(($id));
		unlink('images/news/' . $produk['image']);
		$this->product->deleteProduct($id);
		$this->session->set_flashdata('success', 'News succesfully deleted.');

		redirect(base_url('product'));
	}

}

/* End of file Product.php */
