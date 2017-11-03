<!DOCTYPE html>
<html lang="pt-br">

<?php include('cmysql.php');?>
<?php header('Refresh: 60');?>

<head>
	<title>cprint</title>
	<meta charset="latin1">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="shortcut icon" href="imgs/cprint_favicon.ico" type="image/x-icon" />
	
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/bootstrap-datepicker.css"/>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

	<script type="text/javascript" src="js/jquery.min.js"></script>
  	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker.pt-BR.min.js"></script>
	<script type="text/javascript" src="js/editacol.js"></script>
	
</head>
<body>

<nav class="navbar navbar-default">
<div class="container">
	<p></p>
	      
	<ul class="nav nav-tabs">
	
	  <a class="navbar-brand" data-toggle="modal" data-target="#modal-mensagem" href="">
        <img alt="Brand" src="imgs/cprint_favicon.ico">
     </a>

		<li class="active"><a data-toggle="tab" href="#inicio">Inicio</a></li>
		<li><a data-toggle="tab" href="#usuarios">Usuarios/Quota</a></li>
		<li><a data-toggle="tab" href="#historico">Historico</a></li>
		<li role="presentation"><a data-toggle="tab" href="#alertas">Alertas <span class="badge">!</span></a></li>
	</ul>

	<div class="tab-content">
	
<!--	+++++++++++++++++ ABA INICIO +++++++++++++++++	-->

	<div id="inicio" class="tab-pane fade in active">
	<p></p>

<!--	################ Totais de quotas por grupo ################	-->
	<div>
	<?php
	$querysetor = mysql_query("SELECT distinct(grp_usr) FROM tb_users");
	     
	while($ressetor = mysql_fetch_array($querysetor)){
		$querylinhas = mysql_query("SELECT SUM(qut_def) FROM tb_users WHERE grp_usr = '" . $ressetor['grp_usr'] . "' ORDER BY grp_usr");
       
		echo "<table><tr><td style=width:150px; ></td><td style=width:150px; ></td></tr>";
		echo "<td>" . $ressetor['grp_usr'] . "</td>";
   
			while($reslinhas = mysql_fetch_array($querylinhas)) {
				echo "<td>" . $reslinhas['SUM(qut_def)'] . "</td>";
			}
			echo "</table>";
	}
	?>	
	</div>
		
	<!--	################ Total de quotas ##################	-->
	<div id="totalq">
	<?php
	 $queryqtot = mysql_query("SELECT SUM(qut_def) FROM tb_users");
	 echo "<table><tr><td style=width:150px; ><strong>Total</strong></td>";
	 
    	while($retqtot = mysql_fetch_row($queryqtot)){
    		echo "<td>" . $retqtot[0] . "</td>";
    	}
    echo "</table>";
	?>
	</div>
	
	<p></p>
	
	<!--	################ Maiores impressões por dia ################	-->
	<div>
	<?php
	$querymi = mysql_query("SELECT nom_usr, SUM(qtd_pag) FROM tb_history 
									WHERE dth_imp>=DATE(SYSDATE()) 
									GROUP BY nom_usr ORDER BY SUM(qtd_pag) DESC LIMIT 10");
									
	echo "<table id=tbinimi class=display><tr>
				<td style=width:150px; ><strong></strong></td>
				<td style=width:150px; ><strong></strong></td>
				</tr>";
				
		while($retmi = mysql_fetch_array($querymi)) {
			echo "<tr>
			<td>" . $retmi['nom_usr'] . "</td>
			<td>" . $retmi['SUM(qtd_pag)'] . "</td>
			</tr>";
		}
		echo "</table>";
	?>
	</div>
	
	<p></p>
	
	<!--	################ Total de trabalhos de impressão dia ##################	-->
	<div id="totali">
	<?php
	 $querytoti = mysql_query("SELECT COUNT(1) FROM tb_history 
	 									WHERE dth_imp>=DATE(SYSDATE()) ");
	 									
	 echo "<table><tr><td style=width:270px; ><strong>Total de Trabalhos de Impressão Hoje:</strong></td>";
	 
    	while($rettoti = mysql_fetch_row($querytoti)){
    		echo "<td>" . $rettoti[0] . "</td>";
    	}
    echo "</table>";
	?>
	</div>
	
	<p></p>
		<!--	################ Total de páginas de impressão dia ##################	-->
	<div id="totali">
	<?php
	 $querytotp = mysql_query("SELECT SUM(qtd_pag) FROM tb_history 
	 									WHERE dth_imp>=DATE(SYSDATE()) ");
	 									
	 echo "<table><tr><td style=width:270px; ><strong>Total de Páginas Impressas Hoje:</strong></td>";
	 
    	while($rettotp = mysql_fetch_row($querytotp)){
    		echo "<td>" . $rettotp[0] . "</td>";
    	}
    echo "</table>";
	?>
	</div>
	
	</div>
    
<!--	+++++++++++++++++ ABA USUARIOS +++++++++++++++++	-->

	<div id="usuarios" class="tab-pane fade">
	<p></p>
	<?php
		$queryusr = mysql_query("SELECT nom_usr, qut_atu, qut_def, grp_usr FROM tb_users ORDER BY nom_usr ASC");
		$cont = 0;
		echo "<table id=tbusrquota class=display><tr>
				<td style=width:150px; ><strong>Usuario</strong></td>
				<td style=width:150px; ><strong>Quota atual</strong></td>
				<td style=width:150px; ><strong>Quota padrao</strong></td>
				<td style=width:150px; ><strong>Grupo</strong></td></tr>";
				
		while($retusr = mysql_fetch_array($queryusr)) {
		$cont++;
			echo "<tr>
					<td id=idusr$cont>" . $retusr['nom_usr'] . "</td>
					<td class=q_alt>" . $retusr['qut_atu'] . "</td>
					<td class=q_alt>" . $retusr['qut_def'] . "</td>
					<td>" . $retusr['grp_usr'] . "</td>
					</tr>";
		}
		echo "</table>";
	?>
	</div>
	
    <p></p>

<!--	+++++++++++++++++ ABA HISTORICO +++++++++++++++++	-->

	<div id="historico" class="tab-pane fade">

		<div class="row">

			<div class="col-md-2">
				<label>Data Inicial</label>
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-calendar"></i>
					</div>
					<input type="text" class="form-control input-sm datepickerInicial"/>
				</div>
			</div>

			<div class="col-md-2">
				<label>Data Final</label>
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-calendar"></i>
					</div>
					<input type="text" class="form-control input-sm datepickerFinal"/>
				</div>
			</div>
			<div class="col-md-1">
				<div class="form-group">
					<label></label>
					<a id="pesquisaID" class="btn btn-primary form-control" style="width:100px;">Pesquisar</a>
					
				</div>
			</div>

		</div>
	<p></p>
	
<div id="historicoID">
	<?php
		$queryhist = mysql_query("SELECT nom_usr, nom_arq, qtd_pag, maq_cli, nom_imp, dth_imp 
											FROM tb_history WHERE dth_imp >= DATE(SYSDATE()) ORDER BY cod_hst DESC");
		echo "<table><tr>
				<td style=width:150px; ><strong>Usuario</strong></td>
				<td style=width:200px; ><strong>Documento</strong></td>
				<td style=width:100px; ><strong>Paginas</strong></td>
				<td style=width:150px; ><strong>Cliente</strong></td>
				<td style=width:150px; ><strong>Impressora</strong></td>
				<td style=width:150px; ><strong>Data/Hora</strong></td></tr>";
					while($rethist = mysql_fetch_array($queryhist)) {
						echo "<tr>
								<td>" . $rethist['nom_usr'] . "</td>
								<td>" . $rethist['nom_arq'] . "</td>
								<td>" . $rethist['qtd_pag'] . "</td>
								<td>" . $rethist['maq_cli'] . "</td>
								<td>" . $rethist['nom_imp'] . "</td>
								<td>" . $rethist['dth_imp'] . "</td>
								</tr>";
					}
		echo "</table>";
	?>
	</div>
	</div>
   
<!--	+++++++++++++++++ ABA ALERTAS +++++++++++++++++	-->

	<div id="alertas" class="tab-pane fade">
	<p></p>
	<?php
		$queryalr = mysql_query("SELECT dth_alr,dsc_alr,job_alr FROM tb_alertas");
		echo "<table><tr>
				<td style=width:50px; ><strong>Job</strong></td>
				<td style=width:150px; ><strong>Data/Hora</strong></td>
				<td style=width:500px; ><strong>Alerta</strong></td>
				</tr>";
					while($retalr = mysql_fetch_array($queryalr)) {
						echo "<tr>
								<td>" . $retalr['job_alr'] . "</td>
								<td>" . $retalr['dth_alr'] . "</td>
								<td>" . $retalr['dsc_alr'] . "</td>
								</tr>";
					}
		echo "</table>";
	?>
	</div>
	
</div>
</nav>

<script type="text/javascript">
	
	$('.datepickerInicial').datepicker({
		format: 'yyyy-mm-dd',
		language: 'pt-BR',
		todayHighlight: true, // Marca no componente o dia atual
		autoclose: true

	});

	$('.datepickerFinal').datepicker({
		format: 'yyyy-mm-dd',
		language: 'pt-BR',
		todayHighlight: true, // Marca no componente o dia atual
		autoclose: true
	});

	$('#pesquisaID').on('click', function(){
		var a = $('.datepickerInicial').val();
		var b = $('.datepickerFinal').val();
		console.log(a + b);

		$.ajax({
            url: 'pesquisaHistorico.php',
            type: 'POST',
            data: {dataIni: a, dataFim: b},
            success: function(data) {

            	$('#historicoID').html(data);
		
                //document.getElementById("result_div").innerHTML=response;
            }
        });

	})
</script>


<div class="modal fade" id="modal-mensagem">
    <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                 <h4 class="modal-title">cprint</h4>
             </div>
             <div class="modal-body">
                 <p>Página cprint - versão 1.3 beta</p>
             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
             </div>
         </div>
     </div>
</div>

</body>
</html>
