<?php
	function script($txt,$type,$url=''){
		switch($type){
			case "main" : $url = '/view'; break;
			case "return" : $url = $_SERVER['HTTP_REFERER']; break;
			case "url" : $url = $url; break;
		}

		echo '
			<script>
				alert("'.$txt.'");
				location.href="'.$url.'";
			</script>
		';
	}
	
	function upload(){
		$fileName = strstr($_FILES['file']['name'],'.');
		$fileName = time().$fileName;
		$file = STATICPATH.'upload/'.$fileName;

		if(move_uploaded_file($_FILES['file']['tmp_name'],$file)){
			script('업로드가 완료되었습니다.','url','/view/photo/photo');
		}else{
			script('업로드에 에러가 있습니다..','url','/view/photo/photo');
		}
		return $fileName;
	}