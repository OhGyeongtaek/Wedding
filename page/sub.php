<section class="contUp"></section>
<?php $thisMenu = $menu[$_GET['controller']]; ?>
<section class="body">
	<header>
		<h1><?php echo $thisMenu['title'];?></h1>
		<ul>
			<li><a href="/view">HOME</a></li>
			<li>&gt; </li>
			<li><a href="/view/<?php echo $_GET['controller'].'/'.$_GET['controller'].'.php'?>"><?php echo $thisMenu['title']?></a></li>
			<?php if(isset($thisMenu['sub'])){ ?>
			<li>&gt;</li>
			<li><strong><?php echo $thisMenu['sub'][$_GET['method']]?></strong></li>
			<?php } ?>
		</ul>
	</header>
	<article class="sub_content">
		<?php include PAGE.$_GET['controller'].'/'.$_GET['method'].'.php'; ?>
	</article>
</section>