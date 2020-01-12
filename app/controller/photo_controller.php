<?php
	
	class photo extends controller{
		public function _photo(){
			$this->view->data['img'] = $this->thisModel->photoList();
		}

		public function _save(){
			$this->thisModel->save();
		}
	}