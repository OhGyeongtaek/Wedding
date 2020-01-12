<?php
	class menuModel{
		public $menu = [
			'introduce' =>[
				'title' => 'INTRODUCE',
				'sub'	=>[
					'introduce' => '인사말',
					'find' => '찾아오시는길'
				]
			],
			'wedding' =>[
				'title' => 'WEDDING HALL'
			],
			'reserve' =>[
				'title' => 'RESERVE'
			],
			'photo' =>[
				'title' => 'PHOTO GALLAY'
			],
			'board' =>[
				'title' => 'NEWS&amp;NOTICE'	
			],
			'user'	=>[
				'title' => 'USER',
				'sub'	=> [
					'join'		=> '회원가입',
					'login'		=> '로그인',
					'mypage'	=> '마이페이지'
				] 
			],
			'admin' => [
				'title' => 'ADMIN',
			]
		];
	}