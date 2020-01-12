<?php
	class view{
		public $model = [];
		public $data;

		public function init(){
			$this->data['link'] = empty($_GET['controller'])? 'main' : 'sub';
			$this->data['menu'] = $this->model['menu']->menu;
		}

		public function execute(){
			$this->init();
			extract($this->data);
			include PAGE.'header.php';
			include PAGE.$link.'.php';
			include PAGE.'footer.php';
		}
	}