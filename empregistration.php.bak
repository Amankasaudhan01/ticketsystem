<?php
require 'connection.php';
if (isset($_GET["empid"])){
	$value= $_GET['empid'];
	
	echo "your empid is: '.$value.'";
}
if(isset($_POST["submit"])){
	//$empid= $_POST["empid"];
	$name= $_POST["name"];
	$department= $_POST["department"];
	$system= $_POST["system"];
	$designation=$_POST["designation"];
	$check = mysqli_query ($conn," SELECT *  FROM employe WHERE system = '$system' ");
	if (mysqli_num_rows($check) >0){
		echo "<script>alert('System already assigned');</script>";
	}
	else{
		$query="INSERT INTO employe VALUES('','$name','$department','$system','$designation')";
		mysqli_query($conn,$query);
		$employeid= mysqli_query($conn, " SELECT MAX(empid) from employe");
		//echo $employeid;
		if (!mysqli_errno($conn)) {
			$sql = " select empid from employe order by empid desc limit 1 ";
			$result = mysqli_query ($conn, $sql);
			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
			$value = $row['empid'];
			header("Refresh:0; url = empregistration.php?empid=$value");
			
		echo "<script>alert(' Registration Succesful');</script>";
		}
	}
}
?>
<!Doctype html>
<html lang="eng" dir="ltr">
<head>
	<meta charset="utf-8">

	<title>Registration</title>
		<style><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		label{
		width:100px;
		display:inline-block;
		margin:4px;
		}

		table{
		margin-top:100px;
		margin-left:000px;
		border-radius: 10px;
		background:blue;
		color:white;
		width:390px;
		padding:4px;
		display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
		align: center;
		}



	</style>
</head>
<body>
<div class="container">
	<center>
	<h2>Registration</h2>
	<table>
	<form class="" action="" method="post" autocomplete="off">
	<tr>
	 <td><label for="name">Name:</label></td>
	 <td><input type="text" name="name" id="name" required value=""></br></td>
	 </tr>
	<tr>
	<td><label for="system">System No:</label></td>
	<td><input type="int" name="system" id="system" required value=""></br></td>
	</tr>
	<tr>
	<td><label for="system">Department:</label></td>
	<td><select id="department" name="department">
		<option value="nodepartment">Select</option>
		<option value="technical">Tech</option>
		<option value="sales">Sales</option>
		<option value="support">Support</option>
    <option value="data">Data</option>
    </select><br></td>
	</tr>
	<tr>
	<td><label for="system">Designation:</label></td>
	<td><select id="designation" name="designation">
		<option value="employe">Employe</option>
		<option value="supervisor">Supervisor</option>
    </select> </td>
	</tr>
	<tr><center>
	<td> </td>
	<td><button type="submit" name="submit" id="btn">Register</button></td>
	<!-- <script src="jquery-3.4.1.min.js"></script>
	<script src="sweetalert2.all.min.js></script>
	<script>
	$('.#btn').on('click',function(){
	swal.fire({
	type:'success',
	title:'Registered',
	})
	})
	</script> -->
	</tr>
	</center>
	</form>
	</table>
	</br>
	<tr><button><a href="dashboard.php" color ="white">Dashboard</a></button></tr>
	
  
</br>
</center>
</div>

</body>
</html>
