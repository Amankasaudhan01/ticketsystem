<!DOCTYPE html>
<html>
<head>
  <title>HELPDESK</title>
  <style>
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
	  margin-top:50px;
    }


    .logo {
      margin-top: 50px;
    }

    .buttons {
      display: flex;
      justify-content: space-between;
      width: 30%;
      margin-top: 50px;
    }

    button {
      padding: 10px 20px;
      border-radius: 5px;
      background-color: lightgray;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="logo">
      <img src="logo.png" alt="Logo">
    </div>
    <div class="buttons">
      <form action="employee.php" method="post">
      <button type="submit">EMPLOYEE</button>
	  </form>
	  <form action="suppervisor.php" method="post">
      <button type="submit">SUPERVISOR</button>
    </form>
    </div>
  </div>
</body>
</html>
