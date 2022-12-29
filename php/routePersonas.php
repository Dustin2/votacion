<?php  
	
	// session_start();

	require('sql.php');

	$sql = new sql();

	$action = $_POST['action'];
	
	
	if(isset($_POST['pass']))
		$pass = $_POST['pass'];
	
	if(isset($_POST['user']))
		$user = $_POST['user'];

	if(isset($_POST['info']))
		$info = $_POST['info'];
	switch ($action) {
		case 'encu':
			echo json_encode($sql->encu());
			break;
		case 'voto':
			echo json_encode($sql->voto($info));
			break;
		case 'ran':
			echo json_encode($sql->ran());
			break;
		case 'login':
			echo json_encode($sql->login($user,$pass));
			break;
		case 'usuario':
			session_start();
			
			if (isset($_SESSION['color'])) {
				$us=$_SESSION['color'];
				echo $us;
			}
			echo "";
			break;
		case 'close':
			session_start();
			session_destroy();
			break;
		 case 'registro':
		 	echo json_encode($sql->registro($info));
		 	break;
			
	}
	
?>