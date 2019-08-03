<?php
	require 'config.inc.php';
	header('Access-Control-Allow-Origin:'.$origin_domain);
	if($origin_domain != '*'){
		header('Access-control-Allow-Credentials:true');
	}
	header('Access-control-Allow-Methods:GET,POST');

	$arr['status'] = -1;
	$flag = empty($_GET['callback']);
	$cid = isset($_GET['cid']) ? $_GET['cid'] : 0;
	if($cid == 0){
		$arr['msg'] = '非法的请求参数';
		if($flag){
			echo json_encode($arr);
		}else{
			echo $_GET['callback'] . '(' . json_encode($arr) .');';
		}
	}
	//echo json_encode($_GET);
	$sql = "SELECT id,title,c_time,count,remarks FROM img_main WHERE id=?";
	try{
		$stmt = $pdo->prepare($sql);
		$stmt->execute([$cid]);
		$imginfo = $stmt->fetch(PDO::FETCH_ASSOC);
		$arr['status'] = 0;
		$arr['imginfo'] = $imginfo;
		$arr['msg'] = 'ok';
	}catch(PDOException $e){
		$arr['msg'] = $e->getMessage();
		//die(json_encode($arr));
	}
	
	if($flag){
		echo json_encode($arr);
	}else{
		echo $_GET['callback'] . '(' . json_encode($arr) .');';
	}
	
	
	
?>