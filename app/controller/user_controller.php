<?php
	class user extends controller{
		public function init(){
			$login_access = [
				'logout',
				'mypage'
			];
			if(!in_array($_GET['method'],$login_access)&&isset($_SESSION['id'])){
				script('접근 권한이 없습니다.','main');
			}
		}
		public function _id_chk(){
			$data = $this->thisModel->id_chk();
			if($data >= 1) echo 'no';
		}

		public function _join_save(){
			if(!empty($_POST)) $this->thisModel->save();	

		}

		public function _user(){
			header('Location:/view/user/login');
		}

		public function _login(){
			if($_SERVER['HTTP_REFERER'] !== 'http://127.0.0.1/view/user/login_data'){
				$_SESSION['login_before_url'] = $_SERVER['HTTP_REFERER'];
			}else if(isset($_SESSION['id'])){
				script('이미 로그인이 되었습니다.','main');
			}
		}

		public function _login_data(){
			if(empty($_SESSION['id'])){
				$login = $this->thisModel->login();
				if(!empty($login['id'])){
					$_SESSION['id'] = $login['id'];
					$_SESSION['name'] = $login['name'];
					script('로그인이 완료되었습니다.','url',$_SESSION['login_before_url']);
				}else{
					script('아이디와 비밀번호를 다시 확인해주세요.','return');
				}
			}else{
				script('이미 로그인이 되었습니다.','main');
			}
		}

		public function _logout(){
			unset($_SESSION['id'],$_SESSION['name']);
			script('로그아웃이 완료되었습니다.','return');
		}

		public function _mypage(){
			$this->view->data['user'] = $this->thisModel->mypage();
		}
	}