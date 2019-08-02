<?php
require 'config.inc.php';
////header('Access-Control-Allow-Origin:*'); // 远程访问权限允许所有（该项必须设置）
////注：如果 Access-control-Allow-Credentials 为 true 则 Access-Control-Allow-Origin 必须 设置确定的域名 不能使用通配符。如下：
//header('Access-Control-Allow-Origin:http://localhost:3000');//如果想用cookie,又想多个域名就写多个这样的头.
//header('Access-control-Allow-Credentials:true');//默认 false  是否同意发送Cookie  如果前端请求 withCredentials:true 则该项须设置为true
//header('Access-control-Allow-Methods:GET,POST');//可选 远程请求方法控制 （get post put delete ......）

//注意上面写法.总结成下面写法.可以实现:远程访问权限允许所有
header('Access-Control-Allow-Origin:'.$origin_domain);
if($origin_domain != '*'){
	header('Access-control-Allow-Credentials:true');
}
header('Access-control-Allow-Methods:GET,POST');


//经过上面头设置后cookie有效,可以启用登陆状态了.
//$_SESSION['user'] = ['uid'=>1,'uname'=>'huodeming'];
/*if(!empty($_SESSION['user'])){
	$_POST['user'] = $_SESSION['user']['uname'];
}*/
//file_put_contents('test.txt', json_encode(getallheaders()));
//echo json_encode($_POST);//{user: "huodeming", content: "bbb", cid: "2", mid: "1"}

$uid = !empty($_SESSION['user']) ? $_SESSION['user']['uid'] : null;
$mid = !empty($_POST['mid']) ? $_POST['mid'] : null;
$cid = !empty($_POST['cid']) ? $_POST['cid'] : null;
$content = !empty($_POST['content']) ? $_POST['content'] : null;

$result['status'] = -1;
if(is_null($mid) || is_null($cid) || empty($content)){
	return $result;
}

$sql = 'INSERT INTO comment(cid,mid,uid,content) VALUE(?,?,?,?)';
$count = 0;
try{
	$stmt = $pdo->prepare($sql);
	$count = $stmt->execute([$cid,$mid,$uid,$content]);
}catch(PDOException $e){
	$result['msg'] = $e.getMessage();
}
if($count == 1){
	$result['status'] = 0;
	$result['msg'] = '留言成功';
}
echo json_encode($result);









?>