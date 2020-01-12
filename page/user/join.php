<section class="join">
	<header>
		<h1><span>마이웨딩</span> 회원가입</h1>
		<h2>You can this page My Wedding Join </h2>
	</header>
	<form action="/action/user/join_save" method="post">
		<input type="hidden" id="auto-val" />
		<header>
			<h1>개인정보 입력</h1>
			<h2>이래는 <span style="color:red">필수항목</span>으로 모두 입력해 주세요.</h2>
		</header>
		<table>
			<tbody>
				<tr>
					<th><label for="name">이름</label></th>
					<td><input type="text" name="name" id="name" /></td>
				</tr>
				<tr>
					<th><label for="id">아이디</label></th>
					<td>
						<input type="text" name="id" id="id" />
						<span class="id_chk" style="font-size:12px;">아이디는 영문자 5~12글자 사이로 만들어주세요. </span>
					</td>
				</tr>
				<tr>
					<th><label for="pw">비밀번호</label></th>
					<td><input type="password" name="pw" id="pw" /></td>
				</tr>
				<tr>
					<th><label for="pw_chk">비밀번호 확인</label></th>
					<td><input type="password" id="pw_chk" /></td>
				</tr>
				<tr>
					<th><label for="mail">e-mail</label></th>
					<td><input type="mail" name="mail" id="mail" /></td>
				</tr>
				<tr>
					<th><label for="auto-put">자동가입방지</label></th>
					<td class="auto"><canvas width="180" height="40"></canvas><input type="text" id="auto-put" /></td>
				</tr>
			</tbody>
		</table>
		<div class="moveBox">
			<input type="submit" value="확인"/>
			<input type="reset" value="취소"/>
		</div>
	</form>
</section>