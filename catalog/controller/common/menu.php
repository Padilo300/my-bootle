<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					//lave 3
					$gchildren_data = array();
				    $gchildren = $this->model_catalog_category->getCategories($child['category_id']);

				    foreach ($gchildren as $gchild) {
				        $gchildren_filter_data = array(
				            'filter_category_id'  => $gchild['category_id'],
				            'filter_sub_category' => true
				        );
				        
				        $gchildren_data[] = array(
				            'name'  => $gchild['name'],
				            'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '_' . $gchild['category_id'])
						);
					}
					
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'],
						'gchildren' => $gchildren_data,
					    'column'   => $child['column'] ? $child['column'] : 1,
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		return $this->load->view('common/menu', $data);
	}
}
