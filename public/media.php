<?php
	$pic = $_GET['pic'];
	$url = '/media/'.$pic;

	header( "HTTP/1.1 301 Moved Permanently" ); 
	header ("Location: $url");

?>
