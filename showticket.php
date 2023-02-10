<!DOCTYPE html>
	<?php
		include 'connection.php';
		if (isset($_GET['ticketid'])) {
			$ticketid= $_GET['ticketid'];
			$sql=" select * from ticket where ticketid ='$ticketid'";
			$result = mysqli_query($conn, $sql);
			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
		}

		$issueArray = array("software"=>"Software","Hardware" => "Hardware");
		$PriorityArray = array("1"=>"Low","2"=>"Moderate","3"=>"High","4" =>"Critical");
		$statusArray = array ("new" => "New" , "inprocess" => "In process","closed"=> "Closed");
	?>

	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>show ticket</title>
	</head>

	<body>
		<style>
			table,
			tr,
			th,
			td {
				border: 1px solid black;
				border-collapse: collapse;
			}

			.text {
				justify-content: center;
				align-items: center;
				margin: auto;
				width: 40%;
				border: 2px solid #535858;
				padding: 40px;
				background-color: rgb(200, 209, 209);
			}

			.btn {
				border: none;
				color: white;
				padding: 14px 28px;
				font-size: 16px;
				cursor: pointer;
				justify-content: center;
			}




			.flex-parent {
				display: flex;

			}


			.jc-center {
				justify-content: center;

			}   
	    </style>
			<center>
				<h1>Information regarding the ticket is given below!</h1>
			</center>
			<br>
			<div class="text">
				<table style="width:100%">
					<tr>
						<th>Ticket ID</th>
						<td> <?php echo $row['ticketid']; ?> </td>
					</tr>
					<tr>
						<th>EmpID</th>
						<td> <?php echo $row['empid']; ?> </td>
					</tr>
					 <tr>
						<th>Discription</th>
						<td> <?php echo $row['description']; ?> </td>
					</tr.
					<hr>
					<center>
						<form action= "" method="post" autocomplete="off">
						<tr>
								<td class="select">
									<center><b>Issue</b></center>
								</td>
								<td ALIGN="center">
									
									<select name= "issue">
										<option value="">select</option>
										<?php
											  foreach($issueArray as $key =>$value){ 
												  $selected = (($row['issue']==$key) ? "selected='selected'" : "");
											?>
												<option value="<?=$key;?>" <?=$selected;?>><?=$value;?></option>
										<?php  } ?>
									</select>
								</td>
							</tr>
							<tr>
								<td class="select">
									<center><b>Priority</b></center>
								</td>
								<td ALIGN="center">
								
									<select name="priority">
										<option value=" ">select</option>
										<?php
											  foreach($PriorityArray as $key =>$value){ 
												$selected = (($row['priority']==$key) ? "selected='selected'" : "");
												?>
												<option value="<?=$key;?>" <?=$selected;?>><?=$value;?></option>
										<?php  } ?>
									</select>
								</td>
							</tr>

							<tr>
								<td class="select">
									<center><b>Status</b></center>
								</td>
								<td ALIGN="center">
									
									<select name = "status">
										<option value="">select</option>
										<?php
											  foreach($statusArray as $key =>$value){ 
												$selected = (($row['status']==$key) ? "selected='selected'" : "");
										?>
												<option value="<?=$key;?>" <?=$selected;?>><?=$value;?></option>
										<?php  } ?>
									</select>
								</td>
							</tr>
							<tr>
								<td><center><b>Assigned Group</b></center></td>
								<td ALIGN="left">

									<input type="text" SIZE="55" NAME="assignedgrp" value="<?php echo $row['assignedgrp']; ?>" required>
								 </td>
							</tr>
							 
							<tr>
								<td><center><b>Assigned officer</b></center></td>
								<td ALIGN="left">
									
									<input type="text" size="55" NAME="assignedofficer" value="<?php echo $row['assignedofficer']; ?>" required>
								 </td>
							</tr>

							<tr>
								<td><center><b>Remark</b></center></td>
									<td ALIGN="left">
									<INPUT TYPE="text" SIZE="55" NAME="remark" required>
								 </td>
							</tr>
				 </table>
		<hr>
		<button type="submit" name="update" >Update</button>
				       </form>
				<hr>
				<button class="color- white"><a href="dashboard.php">previous menu</a></button>
			</div>
		  </center>
	</body>

</html>
<?php
	//$ticketid= $_GET['ticketid'];
	date_default_timezone_set('Asia/Kolkata');
    $date = date('d-m-y h:i:s');
	if (isset($_POST["update"])){
	  $issue = $_POST['issue'];
	  $priority = $_POST['priority'];
	  $status = $_POST['status'];
	  $assignedgrp = $_POST['assignedgrp'];
	  $assignedofficer = $_POST['assignedofficer'];
	  $remarks = $_POST['remark'];

	  //$username = mysqli_real_escape_string ($conn, $ticketid);
	  //$passwords= mysqli_real_escape_string ($conn, $password);

	  $querry = "UPDATE ticket SET issue='$issue', priority='$priority',status='$status', assignedgrp='$assignedgrp', assignedofficer='$assignedofficer' WHERE ticketid = '$ticketid' ";
	  $sql = "INSERT INTO logtable VALUES('','$ticketid','$issue','$priority','$status','$assignedgrp','$assignedofficer','$remarks','$date')";
	  mysqli_query($conn, $sql);
	  mysqli_query($conn, $querry);
	  //$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	  //$count = mysqli_errno;
	  if (!mysqli_errno($conn)) {
		echo "<script>alert( 'update successful') </script>";
		header("Refresh:0 ; url = dashboard.php");
	  }
	  else {
		echo "<script>alert( 'not updated') </script>";
	  }
	}
?>
