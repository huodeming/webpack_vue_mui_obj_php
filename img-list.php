<?php
	require 'config.inc.php';
	
	header('Access-Control-Allow-Origin:'.$origin_domain);
	if($origin_domain != '*'){
		header('Access-control-Allow-Credentials:true');
	}
	header('Access-control-Allow-Methods:GET,POST');
		
	//写入图片路径到数据库中.....
	/*$arr = glob('img/imgs/08-*.jpg');
	//print_r($arr);
	$gid = 8;
	foreach($arr as $v){
		$info = pathinfo($v);
		$filename = $info['filename'];
		$sql = "INSERT INTO img_list(gid,title,img_url,zhaiyao) VALUE({$gid},'美女图片{$filename}','{$v}','美女图片{$filename}')";
		$pdo->exec($sql);
	}*/
	
	$gid = isset($_GET['gid']) ? $_GET['gid'] : 0;
	
	$sql = "SELECT id,cid,title,img_url,zhaiyao FROM img_list WHERE 1 = 1 ";
	if($gid > 0){
		$sql .= 'AND gid = ? ';
	}
	$sql .= ' ORDER BY id DESC';//如果分页,就加入分页参数.
	
	$arr['status'] = -1;
	$flag = empty($_GET['callback']);
	try{
		$stmt = $pdo->prepare($sql);
		if($gid > 0) $stmt->bindValue(1,$gid);
		$stmt->execute();
		$list = $stmt->fetchAll(PDO::FETCH_ASSOC);
		$arr['status'] = 0;
		$arr['msg'] = 'ok';
		$arr['list'] = $list;
	}catch(PDOException $e){
		$arr['msg'] = $e->getMessage();
	}
	
	if($flag){
		echo json_encode($arr);
	}else{
		echo $_GET['callback'] . '(' . json_encode($arr) .');';
	}
	
	
	
	
	

?>