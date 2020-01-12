<?php

/*
	reserve 스키마
	room_title
	subscriber_name
	subscriber_id
	reserve_date
	total_price
*/
 class reserveModel extends model{
	public function reserveDate(){
		$sql = 'SELECT * FROM `reserve` WHERE `room_title` = ?';
		return $this->resultAll($sql,[$_GET['room']]);
	}
	
	public function save(){
		$sql = 'SELECT COUNT(*) AS cnt,* FROM `reserve` WHERE subscriber_id=?';
		$chk = $this->result($sql,[$_SESSION['id']]);
		if($chk['cnt'] > 0){
			script($chk['subscriber_name'].'님은 이미 '.$chk['reserve_date'].'일에 이미 예약이 되었습니다.','url','/view/user/mypage');
			return false;
		}else{
			$sql = 'INSERT INTO `reserve` SET
							`room_title` = ?,
							`subscriber_name` = ?,
							`subscriber_id` = ?,
							`reserve_date` = ?,
							`total_price` = ?,
							`amount` = ?';

			$this->query($sql,[	$_POST['room-val'],
								$_SESSION['name'],
								$_SESSION['id'],
								$_POST['date'],
								$_POST['total'],
								$_POST['amount']]);

			script($_POST['date'].'일에 예약되었습니다.','url','/view/user/mypage');
		}
	}
 }