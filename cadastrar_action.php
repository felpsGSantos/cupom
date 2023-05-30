<?php
//session_start();


include ('conectar_db.php');

$nome = $_POST['nome'];
$nasc=$_POST['nasc'];
$email=$_POST['email'];
$num=$_POST['telefone'];
$sexo=$_POST['sexo'];
$cpf=$_POST['cpf'];
$vaga=$_POST['vaga'];
$dataEntrada =$_POST['data_entrada'];
$dataSaida=$_POST['data_saida'];
$periodoEstimado=$_POST['periodo_estimado'];
$periodoTotal=$_POST['periodo_total'];
$valorEstimado=$_POST['valor_estimado'];






$sqlc = "INSERT INTO tbclientes (nomeCli, nasc, emailCli, telefoneCli, sexoCli,cpfCli)
VALUES ('$nome', '$nasc','$email','$num','$sexo','$cpf')";



    $sqlv = "UPDATE tbvagas
    SET statusVag = 'Ocupado'
    WHERE  vaga = '$vaga'";  



$sqlcp = "INSERT INTO  tbcupons (dataEntrada,dataSaida,periodoEstimado,periodoTotal,valorEstimado)
VALUES ('$dataEntrada','$dataSaida','$periodoEstimado','$periodoTotal','$valorEstimado')";

$resultc = mysqli_query($conexao,$sqlc);
$resultv = mysqli_query($conexao,$sqlv);
$resultcp = mysqli_query($conexao,$sqlcp);



//echo '<script>alert("Cadastro concluido com sucessius")</script>';

//$_SESSION['cadastrado'] = '<script>alert("Cadastro concluido com sucesso")</script>';
//$_SESSION['cad']=true;



?>