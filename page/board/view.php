<section class="board-view">
	<input type="hidden" id="id" value="<?php echo @$_SESSION['id']; ?>" />
	<input type="hidden" id="idx" value="<?php echo $_GET['idx']; ?>" />
	<header>
		<h1><?php echo $data['title'];?></h1>
		<section>
			<span><?php echo $data['name'];?></span>
			<span class="view-date"><?php echo $data['date'];?></span>
			<span>조회수  <?php echo $data['hit']?></span>
		</section>
	</header>
	<section class="view-text">
		<?php echo nl2br($data['text']); ?>
	</section>
	<section class="moveBox">
		<a href="/view/board/board">목록으로</a>
		<?php if(isset($_SESSION['id']) && $data['name'] === $_SESSION['id']){?>
		<a href="/action/board/del?idx=<?php echo $_GET['idx']?>">삭제하기</a>
		<a href="/view/board/write?idx=<?php echo $_GET['idx']; ?>">수정하기</a>
		<?php }?>
	</section>
	<section class="review-put">
		<textarea name="re_text" id="re_text" cols="30" rows="10"></textarea>
		<input type="button" value="댓글작성" />
	</section>

	<ul class="list">
		<?php 
			foreach($review as $key => $val){
				echo '<li>
					<strong>'.$val['name'].'</strong>
					<p>'.$val['text'].'</p>
				</li>';
			}
		?>
	</ul>
</section>