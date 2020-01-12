<section class="board">
	<input type="hidden" id="page" value="0"/>
	<h3>My Wedding에 대한 뉴스입니다.</h3>
	<ul class="list">
	<?php 
	if(!empty($list[0]['od'])){
		foreach($list as $key => $val){
	?>
	<li>
		<a href="/view/board/view?idx=<?php echo $val['idx']; ?>">
		<strong><?php echo sprintf('%03d',$val['od']);?></strong>
			<h1><?php echo $val['title'];?></h1>
		<span>더보기</span>
		</a>
	</li>
	<?php }
	}else{
		echo '<li class="not-list">작성된 공지사항이 없습니다.</li>';
	}
	?>
	</ul>
	<?php
		if(count($list) >= 10) echo '<div class="moreList"><img src="/static/img/more_icon.png" alt="more" title="more"></div>'
	?>
	<footer>
		<a href="/view/board/write">글쓰기</a>
	</footer>
</section>