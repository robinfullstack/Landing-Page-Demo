<?php

$field_email = $_POST['cf_email'];
$field_name = $_POST['cf_nombre'];
$field_apellidos = $_POST['cf_apellidos'];
$field_cedula = "123456";
$field_celular = $_POST['cf_celular'];
$field_dia = $_POST['days'];
$field_mes = $_POST['months'];
$field_ano = $_POST['years'];

require_once('library/Mindrill/Mindrill.class.php');
$Mindrill = new Mindrill('ID-Mindrill');

$template_name = array('name' => 'bazar');
$template_info = $Mindrill->call('/templates/info', $template_name);

$_html = $template_info->code;
$_subject = 'Asunto';
$_from_email = 'mercadeo@enterprise.com';
$_from_name = 'Enviado desde';
$_to[] = array('email' => $field_email, 'type' => 'to');

$message = array('message' => array('html' => $_html,
									'subject' => $_subject,
									'from_email' => $_from_email,
									'from_name' => $_from_name,
									'to' => $_to));

$sendEmail = $Mindrill->call('/messages/send', $message);

$link = mysqli_connect("localhost", "user", "password", "database");
mysqli_select_db($link, "database");
$tildes = $link->query("SET NAMES 'utf8'");
mysqli_query($link, "INSERT INTO table_enterprise VALUES (NULL, '" . $field_email . "', '" . $field_name . "', '" . $field_apellidos . "', '" . $field_cedula . "', '" . $field_celular . "', " . $field_dia . ", '" . $field_mes . "', " . $field_ano . ", NULL)");

mysqli_close($link); // Cerramos la conexion con la base de datos

?>
<script language="javascript" type="text/javascript">
	window.location = 'registro.html#registro-existoso';
</script>