<?php
	define('PATH',$path);
	define('STATICPATH',PATH.'static/');

	define('CORE',PATH.'core/');
	define('PAGE',PATH.'page/');
	define('APP',PATH.'app/');

	define('CON',APP.'controller/');
	define('MODEL',APP.'model/');

	include CORE.'model.php';
	include CORE.'function.php';
	include CORE.'view.php';
	include CORE.'controller.php';