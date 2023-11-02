<?php 
$conn=new mysqli("localhost","root","","s2paydb");
        if($_POST["type"]=="Country"){
        $country_id=$_POST['country_id'];
        $sql="select * from states where country_id=$country_id";
        $res=$conn->query($sql);
        echo "<option>Select State</option>";
        while($row=$res->fetch_assoc()) {
        echo "<option value=$row[states_id]>$row[name]</option>";
        }
}
else{
        $state_id=$_POST['state_id'];
        $sql="select * from city where state_id=$state_id";
        $res=$conn->query($sql);
        echo "<option>Select City</option>";
        while($row=$res->fetch_assoc()) {
        echo "<option value=$row[city_id]>$row[name]</option>";
        }
}        
?>