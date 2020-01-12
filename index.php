<?php
	/*학교에서 할일 : 웨딩홀 페이지, 조인, 로그인, 게시판*/

	header('Content-type:text/html; charset=utf-8');
	session_start();
	if(empty($_GET['mode'])) header('Location:/view');
	
	$path = $_SERVER['DOCUMENT_ROOT'];
	include $path.'core/init.php';

	if(is_file(CON.$_GET['controller'].'_controller.php')){
		include CON.$_GET['controller'].'_controller.php';
		$con = new $_GET['controller']();
		if(method_exists($con,'init')) $con->init();
		if(method_exists($con,'_'.$_GET['method'])) $con ->{'_'.$_GET['method']}();
	}else $con = new Controller();

	if($_GET['mode'] ==='view'&&isset($con)) $con->view->execute();