<section class="reserve">
	<header>
		<h1><span>마이웨딩</span> 예약하기</h1>
		<h2>You can this page reservation your wedding </h2>
	</header>
	<form action="/action/reserve/reserve_save" method="post">
		<input type="hidden" name="total" id="total" />
		<input type="hidden" name="room-val" id="room-val" />
		<header>
			당신의 결혼식 My Wedding에서 준비하세요!!
		</header>
		<table>
			<tbody>
				<tr>
					<th><label for="room">Wedding Hall</label></th>
					<td>
						<select name="room" id="room">
							<option value="null">선택해주세요</option>
							<option value="" data-price="33000">기연 웨딩홀</option>
							<option value="" data-price="55000">가연 웨딩홀</option>
							<option value="" data-price="35000">유령 웨딩홀</option>
							<option value="" data-price="25000">화이트 웨딩홀</option>
							<option value="" data-price="18000">라이트 웨딩홀</option>
							<option value="" data-price="33000">글래스 웨딩홀</option>
						</select>
					</td>
					<th>예약자</th>
					<td><?php echo $_SESSION['name']; ?></td>
				</tr>
				<tr>
					<th><label for="amount">수량</label></th>
					<td><input type="number" id="amount" name="amount" max="60" min="5" value="5"/></td>
					<th>1인당 식비</th>
					<td class="meal-price"></td>
				</tr>
				<tr>
					<th><label for="date">예식일</label></th>
					<td colspan="3"><input type="text" id="date" name="date"/></td>
				</tr>
				<tr>
					<th>총 가격</th>
					<td class="total" colspan="3"></td>
				</tr>
			</tbody>
		</table>
		<footer class="move-right">
			<input type="submit" value="예약하기"/>
		</footer>
	</form>
</section>