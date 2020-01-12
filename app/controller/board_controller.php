<?php
	class board extends controller{
		public function _board(){
			$page = empty($_GET['page'])? 0 : $_GET['page'];
			$this->view->data['list'] = $this->thisModel->getList($page);
		}

		public function _more_list(){
			$page = empty($_GET['page'])? 0 : $_GET['page']*10;
			$data = $this->thisModel->getList($page);
			foreach($data as $key => $val){
				echo '	<li>
							<a>
								<strong>'.sprintf('%03d',$val['od']).'</strong>
								<h1>'.$val['title'].'</h1>
								<span>더보기</span>
							</a>
						</li>';
			}
		}
		public function _write(){
			if(empty($_SESSION['id'])||$_SESSION['id'] !== 'admin'){
				header('Location:/view');
			}else{
				$this->view->data['data'] = $this->thisModel->writeData();
			}

		}

		public function _list_save(){
			if(empty($_SESSION['id'])||$_SESSION['id'] !== 'admin'){
				header('Location:/view');
			}else{
				$this->thisModel->list_save();
				script('저장이 완료되었습니다.','url','/view/board/board');
			}
		}

		public function _view(){
			$this->view->data['data']= $this->thisModel->view();
			$this->view->data['review'] = $this->thisModel->getReview();
		}

		public function _del(){
			$this->thisModel->del();
		}

		public function _update(){
			$this->thisModel->update();
		}

		public function _review(){
			$this->thisModel->review();
			echo '<li>
						<strong>'.$_GET['id'].'</strong>
						<p>'.$_GET['text'].'</p>
				  </li>';
		}
	}