<section class="mypage">
	<table>
		<thead>
			<tr>
				<th>예약자</th>
				<th>Wedding Hall</th>
				<th>예약일</th>
				<th>티켓 수량</th>
				<th>총가격</th>
			</tr>
		</thead>
		<tbody>
			<?php if(!empty($user['amount'])){ ?>
			<tr>
				<td><?php echo $user['subscriber_name']?></td>
				<td><?php echo $user['room_title']?></td>
				<td><?php echo $user['reserve_date']?></td>
				<td><?php echo $user['amount']?></td>
				<td><?php echo number_format($user['total_price']).'원'?></td>
			</tr>
			<?php }else{?>
			<tr>
				<th colspan="5">예약하신 결혼식이 없습니다.</th>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</section>