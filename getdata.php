<?php
include "config.php";

/* Getting post data */
$rowid = $_GET['rowid'];
$rowperpage = $_GET['rowperpage'];

/* Count total number of rows */
$query = "SELECT count(*) as allcount FROM profiles";
$result = mysqli_query($con,$query);
$fetchresult = mysqli_fetch_array($result);
$allcount = $fetchresult['allcount'];

/* Selecting rows */
// $query = "SELECT * FROM profiles ORDER BY id ASC LIMIT ".$rowid.",".$rowperpage;
$query = "SELECT * FROM profiles ORDER BY id ASC LIMIT ".$rowid.",".$rowperpage;

$result = mysqli_query($con,$query);



$employee_arr = array();
$employee_arr[] = array("allcount" => $allcount);

while($row = mysqli_fetch_array($result)){
    $empid = $row['id'];
    $empname = $row['name'];
    $salary = $row['keperluan'];
    $employee_arr[] = array("empid" => $empid,"empname" => $empname,"salary" => $salary);
}

/* encoding array to JSON format */
echo json_encode($employee_arr);
?>