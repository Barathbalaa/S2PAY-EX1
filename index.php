<!DOCTYPE html>
<html>
<head>
	<title>S2 PAY</title>
	<meta charset="utf-8">
    <link href="style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="script.js"></script>
</head>
<body class="body">

<?php 
 $conn=new mysqli("localhost","root","","s2paydb");
 $sql="select * from country";
 $res=$conn->query($sql);
?>

<form action="#" method="post">

	<img class="pic" src="S2PAY.png" >
	<hr>
	<div class="side-by-side">
	<div class="part1">
		<label>Name</label>
		<input type="text" name="EmpName" required="true" value="">
		<label>Email</label>
		<input type="text" name="EmpEmail"  required="true" value="">	
	</div>
	<div class="part2">
		<label>Phone</label>
		<input type="text" name="EmpNum" required="true"value="">
		<label>Salary</label>
		<input type="number" name="EmpSal" required="true"value="">
	</div>
	</div>
	<label>Country</label>
    <select name="country" class="country">
    	<option>Select Country</option>
    	<?php while($row=$res->fetch_assoc()) { ?>
    	<option value="<?php echo"$row[country_id]";?>"><?php echo("$row[name]");?></option>
    	<?php } ?>
    </select><br>
    <label>State</label>
    <select name="state" class="state">
    	<option>Select State</option>
    </select><br>
    <label>City</label>
    <select name="city" class="city">
    	<option>Select City</option>
    </select>
    	<br>
    <button  class="button" type="submit" name="submit">SUBMIT</button>
    
</form>

</body>
</html>