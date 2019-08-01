<?php
	$flag = empty($_GET['callback']);
	//file_put_contents('test.txt',json_encode($_GET));
	//var_dump($_SERVER);
	$arr['list'] = glob("img/lunbotu/*.jpg");
	$arr['status'] = 0;
	$arr['length'] = count($arr['list']);
	if($flag){
		echo json_encode($arr);
	}else{
		echo $_GET['callback'] . '(' . json_encode($arr) .');';
	}

	
	//foreach($arr as $k=>$v){
		//$arr[$k] = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].'/'.$v;
	//}
	//echo json_encode($arr);

?>