<?php

// $_REQUEST["goodsList"] = 'goodsList';
// $_REQUEST["login"] = "login";
// $_REQUEST["blue"] = "blue";
// echo phpinfo();



if (count($_REQUEST)) {
	xuanz();
}else{
	echo "error";
}


function xuanz() {
	$ab = array('1' => 'login','2' => 'goodsList','3' => 'category','4' => 's','5' => 'ip_cat','6' => 'detail','7' => 'shophot','8' => 'nums');
	foreach ($_REQUEST as $key => $value) {
		if (array_search($key,$ab) != 0) {
			$key();
		}
	}
}

/*   用户请求    */

function nums(){
	if(empty($_REQUEST['cid'])){
		$s = "SELECT COUNT(*) FROM `olm_product` ";
	}else{
		$s = "SELECT COUNT(*) FROM `olm_product` WHERE cid = '{$_REQUEST['cid']}' ";
	}
	
	// echo "<xmp>";
	$nums['nums'] = sql($s)[0][0];
	echo json_encode($nums);
}

function shophot(){
	if(empty($_REQUEST['limit2'])){die('null');}
	$s = "SELECT `id`,`logo`,`name`,`money`,`ymoney`,`state`,`cid` FROM `olm_product` ORDER BY `id` ";
	$s = $s."limit {$_REQUEST['limit1']} , {$_REQUEST['limit2']}";
	// die($s);
	$s1 = [];
	foreach (sql($s) as $key => $value) {
		foreach ($value as $key1 => $value1) {
			$s1[$key] = array(
				'id' => $value[0],
				'logo' => $value[1],
				'name' => $value[2],
				'money' => floatval($value[3]),
				'ymoney' => floatval($value[4]),
				'state' => $value[5],
				'cid' => $value[6]
			);
		}
	}
	
	// if (!count($s1)) {$s1 = 'null';}
	echo json_encode($s1);
	// echo "<xmp>";
	// print_r($s1);
}

//商品详情
function detail(){
	if(empty($_REQUEST['proId'])){die('null');}
	$s = "SELECT * FROM `olm_product` WHERE `id` = '{$_REQUEST['proId']}' ORDER BY `id` ";
	$s1 = [];
	foreach (sql($s) as $key => $value) {
		// $s1[$key] = [];
		foreach ($value as $key1 => $value1) {
			$s1[$key] = array(
				'id' => $value[0],
				'logo' => $value[1],
				'name' => $value[2],
				'describe' => $value[3],
				'money' => floatval($value[4]),
				'ymoney' => floatval($value[5]),
				'content' => $value[6],
				'state' => $value[7],
				'sellmun' => $value[9],
				'cid' => $value[10]
			);
		}
	}
	$s = "SELECT * FROM `olm_category` WHERE `id` = '{$s1[0]['cid']}'";
	$s1[0]['cidname'] = sql($s)[0][1];
	echo json_encode($s1);
	// echo "<xmp>";
	// print_r($s1);
}



//分类请求
function ip_cat(){
	if(empty($_REQUEST['cid'])){
		$s = "SELECT `id`,`logo`,`name`,`money`,`ymoney`,`state`,`cid` FROM `olm_product` ORDER BY `id` ";
	}else{
		$s = "SELECT `id`,`logo`,`name`,`money`,`ymoney`,`state`,`cid` FROM `olm_product` WHERE cid = '{$_REQUEST['cid']}' ORDER BY `id` ";
	}
	$s = $s."limit {$_REQUEST['limit1']} , {$_REQUEST['limit2']}";
	// die($s);
	$s1 = [];
	foreach (sql($s) as $key => $value) {
		foreach ($value as $key1 => $value1) {
			$s1[$key] = array(
				'id' => $value[0],
				'logo' => $value[1],
				'name' => $value[2],
				'money' => floatval($value[3]),
				'ymoney' => floatval($value[4]),
				'state' => $value[5],
				'cid' => $value[6]
			);
		}
	}
	echo json_encode($s1);
	// echo "<xmp>";
	// print_r($s1);
}


/*   管理员请求    */

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
	$s = 'SELECT * FROM `olm_product`';
	// echo "<xmp>";
	// print_r(sql($s));
	$s1 = [];
	foreach (sql($s) as $key => $value) {
		// $s1[$key] = [];
		foreach ($value as $key1 => $value1) {
			$s1[$key] = array(
				'id' => $value[0],
				'logo' => $value[1],
				'name' => $value[2],
				'describe' => $value[3],
				'money' => floatval($value[4]),
				'ymoney' => floatval($value[5]),
				'content' => $value[6],
				'state' => $value[7],
				'atime' => date("Y-m-d H:s:i",$value[8]),
				'sellmun' => $value[9],
				'cid' => $value[10]
			);
		}
	}
	// print_r($s1);
	// $s['data'] = 1;
	echo json_encode($s1);
	// echo sql($s);
}
function category(){
	$s = 'SELECT * FROM `olm_category`';
	$s1 = [];
	foreach (sql($s) as $key => $value) {
		// $s1[$key] = [];
		foreach ($value as $key1 => $value1) {
			$s1[$key] = array(
				'value' => $value[0],
				'label' => $value[1],
			);
		}
	}
	echo json_encode($s1);
}


function sql($sql){
	$servername = "localhost";
	$username = "root";
	$password = "weiaijie";
	$dbname = "shopping";
	 
	// 创建连接
	date_default_timezone_set("Etc/GMT-8");
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

















////////////////////////
// [d7dde95f6f341e242384694f8eda536c] => 欧范美眼术
// 39 => 欧范美眼术
// 48 => 脱唇腋毛包年（二选一）
// 66 => 脱唇/腋毛包年（二选一）
////////////////////////

function s(){
	header("Content-type: text/html; charset=utf-8");
	$sswq = array(
    "984e1206ca6f6ed4dd83aeb8ab9ecb2a" => "(花样年华)威宁假体隆胸",
    "c336f2230fed7ab50ae5e2869ceab544" => "(浪漫情环)威宁假体隆胸",
    "36056d3291fb9d23fe8f4e4195d32415" => "360嫩肤祛斑",
    "92a9bbd0ef8f3fd79de0872377f8c9e3" => "botox除皱3次",
    "ae6454f9bec5d92dba6e564f35409591" => "botox除皱(单部位)(首次)",
    "8162c121899e7a56e78312b91bb15f54" => "botox瘦脸针(首次)",
    "091b676d9b52e50021790c1562aad99d" => "botox祛鱼尾纹(首次)",
    "4315dc60a20e7ab7b83170db330b8836" => "(针清+红蓝光+中药面膜)祛痘",
    "0f13574ae5f0e8a87a0803ec9fa40eb8" => "艾莉薇玻尿酸(首支)",
    "e477ab0cf174201dc938bcf5e8dada37" => "半永久美瞳线",
    "4b2d2ffaeff602800ef987766025593e" => "半永久纹眉",
    "a8c9d3194a0681a5424baa5312771e6b" => "超冰四肢脱毛(四选一)",
    "21d1e74f8f9d50a385befa9d3a860f3b" => "超皮秒局部",
    "35ab09e974842ce0cea51094a9f4fec2" => "大气泡(舒敏之星)",
    "77447221b42d3c265e254eee2432939d" => "点阵激光",
    "9b28b990d695cff517f351156b84525b" => "菲洛嘉水光针",
    "b1724521b0f9f83eeb2de06d83f4a318" => "光子嫩肤",
    "997f384593624dba814b9a0d7d8974c8" => "国产假体隆鼻",
    "697f4091c62b9ccac1c3f5cbd22bffc0" => "果酸焕肤",
    "765668472498aa773e1b756afcbff451" => "海薇m+玻尿酸(首支)",
    "abc859a68aa3eab5599852b1816824ea" => "海薇玻尿酸(首支)",
    "85cd6883ff3fcdf0250541eed6bcbec1" => "韩士生科假体隆鼻",
    "de9d63627a09cbc00de280cd1dcc656f" => "韩士生科综合隆鼻",
    "567181d48e147484d6085ec6c6db1dac" => "衡力除皱(单部位)(首次)",
    "be03ce351b1c1d105dc16ac19dd40da8" => "衡力瘦脸针3次",
    "df1e2e29ab2a08c76eabbd7471445c55" => "衡力瘦脸针(首次)",
    "cf6c33fc8cdcaf79ab613a23dda1f4fe" => "衡力瘦腿针(首次)",
    "1c1789b34c8b8d17eb09dd57b30661dc" => "基础水光针",
    "46f6c99c3b21e08469cf37ae93c51d74" => "激光点痣",
    "47b7357ad1afeb6b691ecf4f235a6328" => "紧致水光针",
    "04d9f04e3ac0e3aeb70a03162cca657b" => "镭射祛斑",
    "11c4441819259b2de48b0b7fac3b4354" => "立秀膨体鼻综合",
    "2675112f7aa156269f0008e711dcf4d7" => "立秀膨体隆鼻",
    "594280ad869def8176b4627c442c2e42" => "埋线双眼皮",
    "6e086f151d05858f3f23d0c2a2817960" => "曼托圆盘毛面美胸",
    "3eabdf7573fad5bf74429ebf60ec3d8f" => "美白水光针",
    "45fdb9a409611c11e220be40c3466698" => "内窥镜隆胸术",
    "814eb67a9acb03cc61b51178de866d09" => "内切祛眼袋",
    "177a588ba2bc7bb4c31dc2db0ca67370" => "欧范眼综合",
    "efa4fefc70fe897b34db256ea098c891" => "乔雅登雅致玻尿酸(首支)",
    "e94fd4051382e6070fc4f125ca9024c6" => "全切双眼皮",
    "c7e9ef36d837009611034f76f5059b5e" => "热拉提(射频紧肤)",
    "49f312163eab4821a265fe1d0dfa965a" => "瑞蓝玻尿酸(首支)",
    "382bedd61ddc9ca045f53347255e47af" => "润百颜玻尿酸(首支)",
    "729b2caf6c398feb814728f01ca95016" => "双眼皮+开内眼角",
    "a91e00fe1854345d9c4d724ed3cc20c2" => "双眼皮修复",
    "55fc3f2d7515e91a813b01cfda644136" => "脱唇/腋毛包年(二选一)",
    "40f7d5141649a32848b55d6b2f4df497" => "威宁之星隆胸",
    "e8e4854cb0951bf4c33772e8691b0205" => "无针水光",
    "c6a14a6ae750ba893cbe7ebc43144bb0" => "吸脂大腿环吸",
    "57c1a44eeb91a7227cf0b98ecefbf6e0" => "吸脂上臂吸脂",
    "0538cfd19180e16d52f2d385b9099409" => "吸脂腰腹环吸",
    "1c8ce1aed7bbda8ccf581738a5c0f61c" => "小气泡",
    "4a30ea3bb00212acee4add20b3594073" => "伊婉c玻尿酸(首支)",
    "43733a31227718ca8a9cdf74b1014b61" => "伊婉v玻尿酸(首支)",
    "1b87b56e8072b27cfe722dc739a8d854" => "自体脂肪隆胸",
    "d5dee1bad7ba68c86a8f3f24a23232e5" => "自体脂肪填充(全脸)",
    "f58d16be83c11ceca92217fbb6f73ed9" => "自体脂肪填充(小部位)",
    );



	function sql1($sql){
		$servername = "localhost";
		$username = "root";
		$password = "weiaijie";
		$dbname = "shopping";
		 
		// 创建连接
		date_default_timezone_set("Etc/GMT-8");
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
	// $s1 = "SELECT `id`,`name` FROM `olm_product` WHERE 1";
 	//    echo "<xmp>";
 	//    foreach (sql1($s1)as $key => $value) {
	// 	foreach ($value  as $key1 => $value1) {
	// 	}
	// 	echo $key+1 .'      '. $value1."\r\n";
	// }
	// print_r(sql1($s1));

    // foreach ( sql1($s1) as $key => $value) {
    // 	echo $value."\r\n";
    // }
    
    // die();

    // print_r($sswq);
    // $s2 = [];
    

    /* 获取图片地址
    echo "<xmp>";
    $aqe = 0;
	foreach ($sswq as $key => $value) {
		
		$s1 = "SELECT id,name FROM `olm_product` WHERE name in ('$value')" ;
		$sqrqe = sql1($s1);
		foreach ($sqrqe  as $key1 => $value1) {
			// echo ($aqe += count($sqrqe)) ."\r\n";
			// echo count($sqrqe)."\r\n";
			// echo $value1[0] .'=>'. $value1[1];
			// echo "\r\n";
			$s2 = "UPDATE olm_product SET logo = '/src/images/20181204/{$key}.jpg' WHERE id in ('{$value1[0]}')";
			echo $s2.";"."\r\n";
			$aqe++;
		}
	}
	echo $aqe;
	*/

	// $s1 = "SELECT name FROM `olm_product` WHERE name in ('自体脂肪填充(小部位)')" ;
	// print_r(sql($s1));

die();
	$hostdir = '1';
	$hostdir = iconv("utf-8","gb2312//IGNORE",$hostdir);
	$filesnames = scandir($hostdir);
	unset($filesnames[2],$filesnames[3]);
	sort($filesnames);
	echo "<xmp>";
	
	// print_r($filesnames);
	foreach ($filesnames as $key => $value) {
		$filesnames[$key] = iconv("gb2312//IGNORE","utf-8",$value);
		$filesnames[$key] = str_replace(".jpg","",$filesnames[$key]);
	}
	$s = 'SELECT name FROM `olm_product`';
	$s1 = [];
	foreach (sql($s) as $ke => $valu) {
		$s1[$ke] = $valu[0];
	}
	print_r($s1);
	print_r($filesnames);
	
	$t1 = microtime(true);
	$fi = [];
	$key1111 = 0;
	foreach ($filesnames as $key => $value) {
		$sd = md5($value.rand(10000,100000));

		if (rename('1/'.iconv("UTF-8","gb2312",$value).".jpg",'1/'.iconv("UTF-8","gb2312",$sd).".jpg")) {
			$fi[$sd] = $value;
			$key1111++;
		}else{
			echo $value."\r\n";
		}

	}

	print_r($fi);
	// $s2 = [];
	// foreach ($s1 as $key => $value) {
	// 	$s2[$key+1] = $value;
	// }
	// $filesnames2 = [];
	// foreach ($filesnames as $key => $value) {
	// 	$filesnames2[$key+1] = $value;
	// }
	// foreach ($filesnames2 as $key => $value) {
	// 	if (!array_search($value,$s2)) {
	// 		echo $key." => ".$value."\r\n";
	// 	}
	// }
	// // print_r($filesnames2);
	// foreach ($s2 as $key => $value) {
	// 	if (!array_search($value,$filesnames2)) {
	// 		echo $key." => ".$value."\r\n";
	// 	}
	// }
	$t2 = microtime(true);
	echo '耗时'.round($t2-$t1,3).'秒';

}

?>