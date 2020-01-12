<?php
	class photoModel extends model{
		public function photoList(){
			$sql = 'SELECt * FROM `photo` ORDER BY `idx` DESC';
			return $this->resultAll($sql);
		}

		public function save(){
			$sql = 'INSERT INTO `photo` SET
						`img` = ?,
						`date` = NOW()';
			echo upload();
			$this->query($sql,[upload()]);
		}
	}