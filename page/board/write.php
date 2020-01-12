<section class="write">
	<?php $url = empty($_GET['idx'])? '/action/board/list_save':'/action/board/update' ?>
	<form action="<?php echo $url; ?>" method="post">
	<?php if(!empty($_GET['idx'])) echo '<input type="hidden" name="idx">';?>
		<input type="hidden" name="idx" value="<?php echo @$_GET['idx']; ?>" id="idx" />
		<input type="text" placeholder="제목을 입력해 주세요." name="title" id="title" required value="<?php echo @ $data['title']?>"/>
		<textarea name="text" id="text" cols="30" rows="10" required><?php echo $data['text']; ?></textarea>
		<footer class="moveBox">
			<input type="submit" value="저장하기" class="button"/>
			<a href="/view/board/board" class="button">목록으로</a>
		</footer>
	</form>
</section>