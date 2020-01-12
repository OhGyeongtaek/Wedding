<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="/static/css/ui.css" />
  <link rel="stylesheet" href="/static/css/common.css" />
  <link rel="stylesheet" href="/static/css/<?php echo $link;?>.css" />
  <script type="text/javascript" src="/static/js/jquery.js"></script>
  <script type="text/javascript" src="/static/js/jquery_ui.js"></script>
  <script type="text/javascript" src="/static/js/js.js"></script>
  <title>마이호텔</title>
 </head>
 <body>
 <section class="wrap">
	<section class="header">
		<h1><a href="/view"><img src="/static/img/logo.png" alt="logo" title="logo" /></a></h1>
		<header>
			<nav>
				<ul>
					<?php foreach($menu as $key => $val){ if($key === 'user' || $key === 'admin') continue; ?>
					<li><a href="/view/<?php echo $key.'/'.$key?>"><?php echo $val['title']; ?></a></li>
					<?php } ?>
				</ul>
			</nav>
			<?php $width = isset($_SESSION['id'])? '250px' : '150px'; ?>
			<ul style="width:<?php echo $width; ?>">
				<li><a href="/view">HOME</a></li>
				<?php if(isset($_SESSION['id'])){?>
				<?php if($_SESSION['id']==='admin'){ ?>
					<li><a href="/view/admin/admin">관리하기</a></li>
				<?php }else {?>
					<li><a href="/view/user/mypage">MY PAGE</a></li>
				<?php } ?>
					<li><?php echo $_SESSION['name'].'님 환영합니다.'; ?></li>
					<li><a href="/action/user/logout"/>로그아웃</a></li>
				<?php }else{?>
				<li><a href="/view/user/join">JOIN</a></li>
				<li><a href="/view/user/login">LOGIN</a></li>
				<?php } ?>
			</ul>
		</header>
	</section>