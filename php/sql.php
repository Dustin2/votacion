<?php
	/**
	* 
	*/
	class sql 
	{
		
		function encu()
		{
			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT * FROM `pruducto`") or die("problemas en la consulta");
			$vec = array();
			while($fila = $sql->fetch_row()){ 
				$vec[] = $fila; 
			}
			
			return $vec;
		}

		function ran()
		{
			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT `nombre-Po`, `adjunto`, votos FROM `pruducto` ORDER BY`votos` DESC limit 3") or die("problemas en la consulta");
			$nuser=mysqli_query($conectar, "SELECT count(usuarios.Nombre) FROM usuarios")or die("problemas en la consulta 2");
			$ad=$nuser->fetch_row();
			$vec = array();
			while($fila = $sql->fetch_row()){ 
				$vec[] = $fila; 
			}
			$vec[]=$ad;
			
			return $vec;
		}

		public function voto($id)
		{
			session_start();

			$nom=$_SESSION['color'];
			if ($nom<>"") {
				$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
				$vo=mysqli_query($conectar,"SELECT `Nombre`FROM `usuarios` WHERE Nombre='$nom' AND voto=1")or die("problemas en la consulta3");
				$ta=$vo->num_rows;
				
				if($ta<>'1'){
					
					$sql =mysqli_query($conectar, "UPDATE `pruducto` SET `votos`=votos+1 WHERE `id_Obra`='$id'") or die("problemas en la consulta");
					mysqli_query($conectar,"UPDATE `usuarios` SET `voto`=1 WHERE `Nombre`= '$nom'")or die("problemas en la consulta2");
					return $sql;	
				}
			}
			return "erro al guardar secion";
		}




		function login($user,$pass)
		{
			session_start();

			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT * FROM `usuarios` WHERE Nombre='$user' AND Clave='$pass'") or die("problemas en la consulta");
			$vec = array();
			$prue=$sql->num_rows;
			if($prue>0){
				$_SESSION['color']  = $user;
				while($fila = $sql->fetch_row()){ 
					$vec[] = $fila; 
				}
				return $vec;
			}else{
				return "puto errot";
			}
			
			
		}
		function registro($info){
			$user	= $info['user'];
			$mail	= $info['correo'];
			$pass	= $info['pass'];

			$conectar=mysqli_connect('localhost','root','','voto') or die("problemas en la conexion");
			$sql =mysqli_query($conectar, "SELECT * FROM `usuarios` WHERE `Nombre`='$user' OR `Correo`='$mail'") or die("problemas en la consulta1");
			$rdf=$sql->num_rows;
			if ($rdf>0) {
				return "cuenta en uso";
			} else {
				
				$sql =mysqli_query($conectar, "INSERT INTO `usuarios`(`Nombre`, `Correo`, `Clave`) VALUES ('$user','$mail','$pass')");
				return "registroexitoso";
			}
			
		}
	}
?>