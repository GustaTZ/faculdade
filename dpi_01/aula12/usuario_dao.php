<?php

$conexao = null;

try{
	require('conexao.php'); 

	mysqli_set_charset($conexao,"utf8");

	$acao 		= mysqli_real_escape_string($conexao, $_GET['acao']);
	$ra 		= mysqli_real_escape_string($conexao, $_GET['ra']);
	$nome 		= mysqli_real_escape_string($conexao, $_GET['nome']);
	$idade 		= mysqli_real_escape_string($conexao, $_GET['idade']);

	if ($acao=="select"){
		$sql="select * from aluno where ra={$ra}";

		$resultadoDoSelect = mysqli_query($conexao,$sql);

		$vetorLinhasDoBanco = array();
		while ($dadosjogador = mysqli_fetch_assoc($resultadoDoSelect)){
			$vetorLinhasDoBanco[] = $dadosjogador;
		}

		$vetorDeResposta = array();
		if (count($vetorLinhasDoBanco)>0){
			$vetorDeResposta["resultado"] = $vetorLinhasDoBanco;
		}else{
			$vetorDeResposta["resultado"] = "Nenhum registro foi encontrado!";
		}
		echo json_encode($vetorDeResposta);

	}else if ($acao=="insert"){
		$sql="insert into aluno (nome,idade) VALUES ('$nome',$idade)";
		
		mysqli_query($conexao, $sql);
		$linhas_afetadas = mysqli_affected_rows($conexao);
		$vetorDeResposta = array();
		if ($linhas_afetadas>0) {
			$vetorDeResposta["resultado"] = "Dados inseridos com sucesso!";
			$vetorDeResposta["raGerado"]  = mysqli_insert_id($conexao);
		}else{
			$vetorDeResposta["resultado"] = "Não foi possível inserir os dados";
			$vetorDeResposta["raGerado"]  = "";
		}
		echo json_encode($vetorDeResposta);

	}else if ($acao=="update"){
		$sql="update aluno set nome ='{$nome}', idade ={$idade} where ra={$ra} ";
		
		mysqli_query($conexao, $sql);
		$linhas_afetadas = mysqli_affected_rows($conexao);
		$vetorDeResposta = array();
		if ($linhas_afetadas>0) {
			$vetorDeResposta["resultado"] = "Dados atualizados com sucesso!";
		}else{
			$vetorDeResposta["resultado"] = "Nenhum dado foi alterado!";
		}
		echo json_encode($vetorDeResposta);

	}else if ($acao=="delete"){
		$sql="delete from aluno where ra={$ra}";
		mysqli_query($conexao, $sql);
		$linhas_afetadas = mysqli_affected_rows($conexao);
		$vetorDeResposta = array();
		if ($linhas_afetadas>0) {
			$vetorDeResposta["resultado"] = "Dados excluídos com sucesso!";
		}else{
			$vetorDeResposta["resultado"] = "Não foi possível excluir os dados";
		}
		echo json_encode($vetorDeResposta);
	}

}catch(Exception $e){
	$vetorDeResposta = array();
	$vetorDeResposta["resultado"] = "Ocorreu o seguinte erro: ".$e->getMessage();
	echo json_encode($vetorDeResposta);

}finally{

	mysqli_close($conexao);
}


?>