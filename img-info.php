<?php
	require 'config.inc.php';
	header('Access-Control-Allow-Origin:'.$origin_domain);
	if($origin_domain != '*'){
		header('Access-control-Allow-Credentials:true');
	}
	header('Access-control-Allow-Methods:GET,POST');

	//print_r($_SERVER);
	$arr['status'] = -1;
	$flag = empty($_GET['callback']);
	$cid = isset($_GET['cid']) ? $_GET['cid'] : 0;
	//$cid = 1;
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
		//$imglist = [];
		if(!empty($imginfo['id'])){
			$sql = 'SELECT img_url src,img_url_min msrc,title alt,zhaiyao title FROM img_list WHERE cid=?';
			$stmt = $pdo->prepare($sql);
			$stmt->execute([$imginfo['id']]);
			$imglist = $stmt->fetchAll(PDO::FETCH_ASSOC);
			for($i = 0 ; $i < count($imglist) ; $i++){
				$temp = getimagesize($imglist[$i]['src']);
				//print_r($temp);//Array ( [0] => 1600 [1] => 2400 [2] => 2 [3] => width="1600" height="2400" [bits] => 8 [channels] => 3 [mime] => image/jpeg ) 
				$imglist[$i]['src'] = $http_root . $imglist[$i]['src'];
				if(empty($imglist[$i]['msrc'])) $imglist[$i]['msrc'] = $imglist[$i]['src']; else $imglist[$i]['msrc'] = $http_root . $imglist[$i]['msrc'];
				$imglist[$i]['w'] = $temp[0];
				$imglist[$i]['h'] = $temp[1];
			}
			$arr['imglist'] = $imglist;
		}
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