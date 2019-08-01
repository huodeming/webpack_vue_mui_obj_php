<?php
	require 'config.inc.php';
/*	$list = [
		['id'=>'1','title'=>'西施','add_time'=>'2019-08-10 14:20:15','zhaoyao'=>'天生丽质，五官端正，粉面桃花，相貌过人。','count'=>'10','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/001.jpg'],
		['id'=>'2','title'=>'貂蝉','add_time'=>'2019-08-10 14:20:17','zhaoyao'=>'闭月,是东汉末年司徒王允的歌女，国色天香，有倾国倾城之貌。','count'=>'11','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/002.jpg'],
		['id'=>'3','title'=>'王昭君','add_time'=>'2019-08-10 14:20:20','zhaoyao'=>'昭君亦有风华绝代之容，倾国倾城之貌，光明汉宫，顾影徘徊，竦动左右。','count'=>'31','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/003.jpg'],
		['id'=>'4','title'=>'杨贵妃','add_time'=>'2019-08-10 14:20:25','zhaoyao'=>'休花,通晓音律，能歌善舞。','count'=>'15','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/004.jpg'],
		['id'=>'5','title'=>'冯小怜','add_time'=>'2019-08-10 14:20:28','zhaoyao'=>'天生的尤物，肌肤吹弹可破，吐气如兰。','count'=>'120','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/005.jpg'],
		['id'=>'6','title'=>'苏妲己','add_time'=>'2019-08-10 14:20:31','zhaoyao'=>'美若天仙、能歌善舞、国色天香的美人。','count'=>'','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/006.jpg'],
		['id'=>'7','title'=>'赵飞燕','add_time'=>'2019-08-10 14:20:32','zhaoyao'=>'能歌善舞，体态纤美，轻盈如燕，相传其能在掌中起舞，故称“飞燕”。','count'=>'10','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/007.jpg'],
		['id'=>'8','title'=>'郑旦','add_time'=>'2019-08-10 14:20:35','zhaoyao'=>'郑旦好剑，性格刚烈。','count'=>'50','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/008.jpg'],
		['id'=>'9','title'=>'褒姒','add_time'=>'2019-08-10 14:20:40','zhaoyao'=>'幽王为烽燧大鼓，有寇至则举烽火。','count'=>'33','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/009.jpg'],
		['id'=>'10','title'=>'甄宓','add_time'=>'2019-08-10 14:20:50','zhaoyao'=>'千古留芳的《洛神赋》,为她而写。','count'=>'68','img_url'=>'http://localhost/webpack_vue_mui_obj_php/img/news/010.jpg'],
	];*/
	
	$sql = 'SELECT id,title,add_time,img_url,count FROM news ORDER BY id DESC LIMIT 0,20';
	$stmt = $pdo->prepare($sql);
	$stmt->execute();
	$list = $stmt->fetchAll(PDO::FETCH_ASSOC);
	
	$flag = empty($_GET['callback']);
	$arr['status'] = 0;
	$arr['news'] = $list;
	
	if($flag){
		echo json_encode($arr);
	}else{
		echo $_GET['callback'] . '(' . json_encode($arr) .');';
	}
?>