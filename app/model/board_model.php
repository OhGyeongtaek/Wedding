<?php
	class boardModel extends Model{
		public function getList($page){
			$sql = 'SELECT * FROM `board` ORDER BY `od` DESC LIMIT '.$page.', 10';
			return $this->resultAll($sql);
		}

		public function list_save(){
			$sql = 'SELECT * FROM `board` ORDER BY `od` DESC';
			$od =  $this->result($sql);
			$od = $od['od'];

			$sql = 'INSERT INTO `board` SET
						`title` = ?,
						`name` = ?,
						`date` = NOW(),
						`text` = ?,
						`od` = ?';

			$this->query($sql,[$_POST['title'],$_SESSION['id'],$_POST['text'],$od+1]);
		}

		public function view(){
			$sql = 'UPDATE `board` SET hit=hit+1 WHERE idx=?';
			$this->query($sql,[$_GET['idx']]);
			$sql = 'SELECT * FROM `board` WHERE idx=?';
			return $this->result($sql,[$_GET['idx']]);
		}

		public function del(){
			$sql = 'DELETE FROM `board` WHERE idx = ?';
			$this->query($sql,[$_GET['idx']]);
			script('삭제되었습니다.','url','/view/board/board');
		}

		public function update(){
			$sql = 'UPDATE `board` SET
						`title` = ?,
						`text` = ?
					WHERE `idx` = ?';
			$this->query($sql,[$_POST['title'],$_POST['text'],$_POST['idx']]);
			script('수정이 완료되었습니다.','url','/view/board/view?idx='.$_POST['idx']);
		}

		public function review(){
			$sql = 'INSERT INTO `review` SET
						`name` = ?,
						`text` = ?,
						`date` = NOW(),
						`m_idx` = ?';

			$this->query($sql,[$_GET['id'],$_GET['text'],$_GET['idx']]);
		}

		public function writeData(){
			$sql = 'SELECT * FROM `board` WHERE idx=?';
			return $this->result($sql,[$_GET['idx']]);
		}

		public function getReview(){
			$sql = 'SELECT * FROM `review` WHERE m_idx = ?';
			return $this->resultAll($sql,[$_GET['idx']]);
		}
	}