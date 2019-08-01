<?php
$dns = 'mysql:host=localhost;dbname=webpack_vue_mui_obj_php';

$db_user = 'root';
$db_pwd = 'root';
$pdo = null;
try{
    $pdo = new PDO($dns,$db_user,$db_pwd);
    //$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);//设置错误处理方式为警告.
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);//设置错误处理方式为,异常处理
}catch(PDOException $e){
    echo '数据库连接出错了!';
    echo $e->getMessage();
}


?>