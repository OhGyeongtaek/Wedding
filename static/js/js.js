window.format = function(data){
	var func = new Intl.NumberFormat();
	return func.format(data);
}
$(function(){
	$('.body .content header div').click(function(){
		var $class = $(this).attr('class') === 'up',
			change_class = $class? 'down' : 'up';
		$(this).attr('class',change_class);
		$('.content').attr('data-type',change_class);
	});

	if($('.join').length > 0){

		/*auto join*/
		var str = '1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
		var data = str.split('').sort(function(){ return 0.5-Math.random(); }).join('');
		var txt = data.substring(0,6);
		
		var ctx = document.querySelector('.auto canvas').getContext('2d');

		ctx.beginPath();
			ctx.font = '30px margun gothic';
			ctx.fillText(txt,10,30);
			ctx.strokeStyle = 'red';
			ctx.moveTo(10,20.5);
			ctx.lineTo(120,20.5);
			ctx.stroke();
		ctx.closePath();

		var src = document.querySelector('.auto canvas').toDataURL();
		$('canvas').after('<img src="'+src+'" title="자동가입방지" alt="자동가입방지">').remove();
		$('#auto-val').val(txt);

		/*end*/

		/*id_chk variable*/
		var id_chk = true;

		/*id chk*/
		$('#id').keyup(function(){
			var id = this.value;
			$.get('/action/user/id_chk',{'id':id},function(data){
				if(data == 'no'||!/^[(a-z0-9)]{5,12}$/.test(id)){
					$('.id_chk').html('사용할 수 없는 아이디 입니다.').css('color','red');
					id_chk = false;
				}else{
					$('.id_chk').html('사용 가능한 아이디 입니다.').css('color','green');
					id_chk = true;
				}
			});
		});
		/*end*/

		/*form chk*/
		$('.join form').submit(function(){
			if(!/^[가-힣]{2,5}$/.test($('#name').val())){
				alert('이름은 한글 이름으로 작성해주세요.');
				$('#name').focus();
				return false;
			}else if(!id_chk){
				alert('아이디를 확인해주세요.');
				$('#id').focus();
				return false;
			}else if($('#pw').val() !== $('#pw_chk').val()){
				alert('비밀번호가 다릅니다.');
				$('#pw').focus();
				return false;
			}else if($('#auto-put').val() !== $('#auto-val').val()){
				alert('자동가입 방지를 다시입력해 주세요.');
				$('#auto-put').val('');
				$('#auto-put').focus();
				return false;
			}
		});
		/*end*/
	}

	var count = 1;

	function listMove(){
		var total = $('.list li').length;
		if(count > total) return false;
		if($('.active-list').length != total||$('.active-list').length ==0) setTimeout(function(){
			$('.list li:nth-of-type('+count+')').addClass('active-list');
			listMove();
			count++;
		},100);
	}

	/*board list page*/
	if($('.board').length > 0){
		listMove();
		$('.moreList').click(function(){
			var page = Number($('#page').val())+1;
			$('#page').val(page);
			$.get('/action/board/more_list',{'page':page},function(data){
				if(data === ''){
					var NotData = '<p class="notData">더이상 가져올 데이터가 없습니다.</p>';
					$('.moreList').after(NotData).remove();
				}else{
					$('.list').append(data);
					listMove();
				}
			});
		});
	}

	if($('.board-view').length > 0){
		listMove();
		$('.review-put input').click(function(){
			if($('#id').val() == ''){
				alert('로그인을 해주세요.');
				location.href="/view/user/login";
				return false;
			}
			var data = {
				'id' : $('#id').val(),
				'text' : $('textarea').val(),
				'idx' : $('#idx').val()
			};

			$.get('/action/board/review',data,function(data){
				$('.list').append(data);
				listMove();
			});
		});
	}

	if($('.photo').length > 0){
		function img_change(){
			$('.img-view a').click(function(e){
				e.preventDefault();
				var chk = $(this).attr('class') === 'next';
				var val = Number($('.img-view img').attr('data-order'))+1;
				var nth = chk? Number(val) : Number(val)-2;
				var src = $('.photo img:nth-of-type('+nth+')').attr('src');
				var where = chk && nth > $('.photo img').length;
				var where1 = !chk && nth === 0;
				if(where || where1) return false;
				$('.img-view img').attr({'src':src, 'data-order':nth});
			});
		}

		$('.photo-gallay').dialog({autoOpen:false,width:500,'height':100});

		$('.photo header a').click(function(){ 
			$('.photo-gallay').dialog('open');
		});

		$('.img-view').dialog({
				'autoOpen':false,
				'width':540,
				'closeText' : 'X'
		});

		$('.photo img').click(function(){
			$('.img-view img').attr({
				'src' : $(this).attr('src'),
				'data-order' : $(this).attr('data-order')
			});
			$('.img-view').dialog('open');
			img_change();
			$('.next').click();
		});

		function img_animate(){
			var total = $('.photo img').length;
			if(count > total) return false;
			if($('.active-img').length != total||$('.active-img').length ==0) setTimeout(function(){
				$('.photo img:nth-of-type('+count+')').addClass('active-img');
				img_animate();
				count++;
			},200);
		}
		img_animate();
	}

	if($('.reserve').length > 0){
		function spinFunc(){
			var price = Number($('.reserve select option:selected').data('price'));
			if($('.reserve select option:selected').val() === 'null'){
				$('.meal-price').html('');
				$('.total').html('');
				$('.reserve select').css('border','5px solid red');
				return false;
			}else{
				$('#total').val(price*$('#amount').val());
				$('#room-val').val($('.reserve select option:selected').html());
				$('.meal-price').html(format(price)+'원');
				$('.total').html(format(price*$('#amount').val())+'원');
			}
		}

		$('#amount').spinner({
			spin:spinFunc
		});
		
		var noDate = null;	
		
		$('.reserve select').change(function(){
			var $target = $('.reserve select option:selected');
			if(this.value !== 'null') $(this).css('border','1px solid #ccc');
			var option = {'room':$target.html()};
			$.getJSON('/action/reserve/getDate',option,function(data){
				noDate = data;
			});
			$('#amount').spinner('value',5);
			spinFunc();
		});

		$('#date').datepicker({
			minDate : new Date(),
			dateFormat: 'yy-mm-dd',
			beforeShowDay : function(data){
				var chk = (noDate+'').indexOf($.datepicker.formatDate('yy-mm-dd',data)) === -1;
				return [chk,chk? "" : "noDate",chk? '' : '이미 다른 기업에서 대여하였습니다.'];
			}
		});

		$('.reserve form').submit(function(){
			var $target = $('.reserve select option:selected');
			if($target.val() === 'null'||$('#date').val() == ''){
				alert('입력사항을 다시 확인해주세요.');
				return false;
			}
		});
	}

	if($('.admin').length > 0){
		var ctx = document.querySelector('canvas').getContext('2d');
		var color = ['#c8b5f0','#9dbbe8','#a5dbe1','#a5e1c0','#d1da9c','#dac99c','#dfad7d','#e36969','#9047d3','#326ec7','#aaccca','#c6913e'];
		for(var i=0; i<=11; i++){
			var data = $('.admin td:nth-of-type('+(i+1)+')').html().substr(0,2);
			console.log(data);
			if(i>9){
				ctx.beginPath();
					ctx.fillStyle = color[i];
					ctx.fillRect(30+(82.5*i),300,30,-3*Number(data));
				ctx.closePath();
			}else{
				ctx.beginPath();
					ctx.fillStyle = color[i];
					ctx.fillRect(30+(83*i),300,30,-3*Number(data));
				ctx.closePath();	
			}
		}
	}
})