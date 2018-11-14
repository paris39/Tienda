<?php
	# FileName="Connection_php_mysql.htm"
	# Type="MYSQL"
	# HTTP="true"
	$hostname_Tienda_localhost = "localhost";
	$database_Tienda_localhost = "tienda";
	$username_Tienda_localhost = "root";
	$password_Tienda_localhost = "root";
	$Tienda_localhost = mysql_pconnect($hostname_Tienda_localhost, $username_Tienda_localhost, $password_Tienda_localhost) or trigger_error(mysql_error(),E_USER_ERROR); 
?>