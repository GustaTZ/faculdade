<?php

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', '_terca_noite');

$conexao = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if (mysqli_connect_errno()) {
	
  $vetorDeResposta = array();
  $vetorDeResposta["resultado"] = "Falha na conexão com o MySQL: " . mysqli_connect_error();
  echo json_encode($vetorDeResposta);

  mysqli_close($conexao);
  exit();
}

?>