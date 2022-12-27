<!DOCTYPE HTML>
<html lang="pt-br">  
    <head>  
        <meta charset="utf-8">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="assets/css/style.css">
		<title>Lista de E-mails</title>
    </head>
    <body>	
		<img src="assets/imgs/logo.png" alt="logo prefeitura" class="logo">
		<div id="container">
			<h1 clas="email">Lista de e-mails</h1>
			<input type="text" name="search" id="search" placeholder="Pesquisar e-mail">
			<span id="conteudo"></span>
		</div>
		<?php
include_once "conexao.php";

//consultar no banco de dados
$result_emails = "SELECT * FROM mailbox ORDER BY username asc";
$resultado_emails = mysqli_query($conn, $result_emails);

//Verificar se encontrou resultado na tabela "emails"
if(($resultado_emails) AND ($resultado_emails->num_rows != 0)){
	?>
	<div>
		<table id="table" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>e-mail</th>
					<th>nome</th>
				</tr>
			</thead>
			<tbody id="corpo">
				<?php
				while($row_emails = mysqli_fetch_assoc($resultado_emails)){// foreach(mysql_fetch_assoc() as $row_emails)
				print("
					<tr>
						<td>$row_emails[username]</td>
						<td>$row_emails[name]</td>
					</tr>
					");
				}
				?>
			</tbody>
		</table>
	</div>
<?php
}else{
	echo "<div class='alert alert-danger' role='alert'>Nenhum email encontrado!</div>";
}
?>
		<script>
			$(document).ready(function () {
				$.post(function(retorna){
					//Subtitui o valor no seletor id="conteudo"
					$("#conteudo").html(retorna.toLowerCase());
				});
			});
		</script>
		<script>
			$(document).ready(function(){
				$('#search').keyup(function(){
					search_table($(this).val());
				});
				function search_table(value){
					$('#corpo tr').each(function(){
						var found = 'false';
						$(this).each(function(){
							if($(this).text().toLowerCase().indexOf(value.toLowerCase())>=0){
								found = 'true';
							}
						});
						if(found == 'true'){
							$(this).show();
						}
						else{
							$(this).hide();
						}
					})
				}
			});
		</script>
    </body>
</html>
