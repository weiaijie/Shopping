<?php

// $_REQUEST["login"] = "login";
// $_REQUEST["blue"] = "blue";
if (count($_REQUEST)) {
	xuanz();
}else{
	echo "error1111";
}
function xuanz() {
	$ab = array('1' => 'login');
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
function blue(){
	echo "blue";
}
function green(){
	echo "green";
}

?>