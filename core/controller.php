<?php
	class controller{
		public $model = [];
		public $view;
		public $thisModel;

		public function __construct(){
			$this->view = new view();
			$this->loadModel('menu');
			if(is_file(MODEL.$_GET['controller'].'_model.php')) $this->thisModelSet();
		}

		protected function loadModel($data){
			if(is_file(MODEL.$data.'_model.php')){
				include MODEL.$data.'_model.php';
				$model = $data.'Model';
				$this->model[$data] = new $model();
				$this->view->model[$data] = new $model();
			}
		}

		private function thisModelSet(){
			$this->loadModel($_GET['controller']);
			$model = $_GET['controller'].'Model';
			$this->thisModel = new $model();
		}
	}