<?php
// $_REQUEST["goodsList"] = 'goodsList';
// $_REQUEST["login"] = "login";
// $_REQUEST["blue"] = "blue";
if (count($_REQUEST)) {
	xuanz();
}else{
	echo "error1111";
}
function xuanz() {
	$ab = array('1' => 'login','2' => 'goodsList');
	foreach ($_REQUEST as $key => $value) {
		if (array_search($key,$ab) != 0) {
			$key();
		}
	}
}
function login(){
	if ($_REQUEST['username'] == 'admin' && $_REQUEST['pass'] == "123456") {
		echo "1";
	}else{
		echo "0";
	}
	// echo $_REQUEST['username']." : ".$_REQUEST['pass'];
	// print_r($_REQUEST);
}
function goodsList(){
	date_default_timezone_set("Etc/GMT-8");
	$s = 'SELECT * FROM `olm_product`';
	// echo "<xmp>";
	// print_r(sql($s));
	$s1 = [];
	foreach (sql($s) as $key => $value) {
		// $s1[$key] = [];
		foreach ($value as $key1 => $value1) {
			$s1[$key] = array(
				'logo' => $value[1],
				'name' => $value[2],
				'describe' => $value[3],
				'money' => floatval($value[4]),
				'ymoney' => floatval($value[5]),
				'content' => $value[6],
				'state' => $value[7],
				'atime' => date("Y-m-d H:i",$value[8]),
				'sellmun' => $value[9],
				'locidgo6' => $value[10]
			);
		}
	}
	// print_r($s1);
	// $s['data'] = 1;
	echo json_encode($s1);
	// echo sql($s);
}
function green(){
	echo "green";
}


function sql($sql){
	$servername = "localhost";
	$username = "root";
	$password = "weiaijie";
	$dbname = "shopping";
	 
	// 创建连接
	
	$conn = new mysqli($servername, $username, $password,$dbname);
	mysqli_query($conn, 'set names utf8');
	if ($conn->connect_error) {
    	die("连接失败: " . $conn->connect_error);
	}
	$result = $conn->query($sql);
	// $row =[];
	// echo  mysqli_num_rows($result);
	// if ($result->num_rows > 0) {
	//     // 输出数据
	//     while($row = $result->fetch_assoc()) {
	//         // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	//         print_r($row);
	//         array_push($row)
	//     }
	// } else {
	//     echo "0 结果";
	// }

	$conn->close();
	return mysqli_fetch_all($result);
}
?>