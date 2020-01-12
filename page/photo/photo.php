<section class="photo">
	<header class="move-right">
		<a href="#">파일올리기</a>
	</header>
	<?php foreach($img as $key => $val){
			echo '<img src="/static/upload/'.$val['img'].'" title="img" alt="img" data-order="'.$key.'">';
		} ?>
	<section class="img-view" title="Photo Gallay">
		<img src="#" alt="img" title="img" />
		<a href="#" class="prev"></a>
		<a href="#" class="next"></a>
	</section>

	<section class="photo-gallay" title="File Upload">
		<form action="/action/photo/save" method="post" enctype="multipart/form-data">
			<input type="file" name="file" id="file" />
			<input type="submit" value="전송"/>
		</form>
	</section>

</section>