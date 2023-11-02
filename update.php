<?php 
$conn=new mysqli("localhost","root","","s2paydb");
$emp_name=$_POST["EmpName"];
$emp_mail=$_POST["EmpEmail"];
$emp_num=$_POST["EmpNum"];
$emp_sal=$_POST["EmpSal"];
$emp_country=$_POST["country"];
$emp_state=$_POST["state"];
$emp_city=$_POST["city"];
$sql="Insert into empdata (
EmpName,
EmpEmail,
EmpNum,
EmpSal,
country_id,
states_id,
city_id)
values('$emp_name','$emp_mail','$emp_num','$emp_sal','$emp_country','$emp_state','$emp_city')";
$conn->query($sql);
?>