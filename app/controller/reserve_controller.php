<?php
	class reserve extends controller{
		public function init(){
			if(!isset($_SESSION['id'])){
				script('로그인을 해주세요','url','/view/user/login');
				exit();
			}
		}

		public function _getDate(){
			$data = $this->thisModel->reserveDate();
			$arr = [];
			foreach($data as $key => $val){
				$arr[] = $val['reserve_date'];
			}
			echo json_encode($arr);
		}

		public function _reserve_save(){
			$this->thisModel->save();
		}
	}