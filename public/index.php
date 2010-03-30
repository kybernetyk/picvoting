<?php
	$pic = $_GET['i'];
	$url = '/'.$pic;

	header( "HTTP/1.1 301 Moved Permanently" ); 
	header ("Location: $url");

?>
