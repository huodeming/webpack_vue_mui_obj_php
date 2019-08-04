<?php
session_start();
$dns = 'mysql:host=localhost;dbname=webpack_vue_mui_obj_php';

//http://localhost/webpack_vue_mui_obj_php/
$http_root = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/';

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

//获取客户端请求头信息,主要是获取Origin的域名,以方便设置ajax跨域时带cookie.
if (!function_exists('getallheaders')) {
    function getallheaders() {
        $headers = [];
        foreach ($_SERVER as $name => $value) {
            if (substr($name, 0, 5) == 'HTTP_') {
                $headers[str_replace(' ', '-', ucwords(strtolower(str_replace('_', ' ', substr($name, 5)))))] = $value;
            }
        }
        return $headers;
    }
}
$origin_domain = isset(getallheaders()['Origin']) ? getallheaders()['Origin'] : '*';


?>