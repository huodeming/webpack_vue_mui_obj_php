<?php
	require 'config.inc.php';
	//$_GET['cid'] = '1';
	//$_GET['mid'] = '1';
	//sleep(5);
	//file_put_contents('test.txt', var_export($_GET,TRUE));
	$arr['status'] = -1;
	if(empty($_GET['cid']) or empty($_GET['mid'])){
		die(json_encode($arr));
	}
	$cid = $_GET['cid'];//新闻ID,外键
	$mid = $_GET['mid'];//模块ID,1新闻
	$page = empty($_GET['p']) ? 1 : $_GET['p'];//加载第几页
	
	$sql = "SELECT id,c_time,content FROM comment WHERE cid=? AND mid=? ORDER BY id DESC LIMIT ?,?";
	$stmt = $pdo->prepare($sql);
	$stmt->bindValue(1,$cid);
	$stmt->bindValue(2,$mid);
	$stmt->bindValue(3,($page-1)*10,PDO::PARAM_INT);//limit的一个BUG...注意
	$stmt->bindValue(4,10,PDO::PARAM_INT);//limit的一个BUG...注意
	$stmt->execute();
	$list = $stmt->fetchAll(PDO::FETCH_ASSOC);
	
	$flag = empty($_GET['callback']);
	$arr['status'] = 0;
	$arr['comments'] = $list;
	
	if($flag){
		echo json_encode($arr);
	}else{
		echo $_GET['callback'] . '(' . json_encode($arr) .');';
	}
	
?>