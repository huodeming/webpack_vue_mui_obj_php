<?php
	require 'config.inc.php';
	
	//其实下面这几行header可以不要,像这种页面,直接用JSONP跨域请求就行了.
	header('Access-Control-Allow-Origin:'.$origin_domain);
	if($origin_domain != '*'){
		header('Access-control-Allow-Credentials:true');
	}
	header('Access-control-Allow-Methods:GET,POST');
	
	
	$sql = 'SELECT gid,gname FROM img_group WHERE status = 1';
	$result['status'] = 0;
	try{
		$stmt = $pdo->query($sql);
		$result['list'] = $stmt->fetchAll(PDO::FETCH_ASSOC);
	}catch(PDOException $e){
		$result['status'] = -1;
		$result['msg'] = $e->getMessage();
	}
	$result['msg'] = 'ok';
	//print_r($result);
	$flag = empty($_GET['callback']);
	if($flag){
		echo json_encode($result);
	}else{
		echo $_GET['callback'] . '(' . json_encode($result) .');';
	}
	

?>