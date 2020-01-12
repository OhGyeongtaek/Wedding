<?php
	class userModel extends model{
		public function id_chk(){
			$sql = 'SELECT * FROM `user` WHERE id=?';
			return $this->result($sql,[$_GET['id']]);
		}

		public function save(){
			$sql = 'INSERT INTO `user` SET
						`id`	= ?,
						`name`	= ?,
						`pw`	= ?,
						`mail`	= ?';

			$this->query($sql,[	$_POST['id'],
								$_POST['name'],
								$_POST['pw'],
								$_POST['mail']]);

			script('가입완료','main');
		}

		public function login(){
			$sql = 'SELECT * FROM `user` WHERE id = ? AND pw = ?';
			return $this->result($sql,[$_POST['id'],$_POST['pw']]);
		}

		public function mypage(){
			$sql = 'SELECT * FROM `reserve` WHERE `subscriber_id` = ?';
			return $this->result($sql,[$_SESSION['id']]);
		}
	}