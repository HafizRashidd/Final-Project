<?php
error_reporting(0);
include_once("dbconnect.php");
$userid = $_GET['userid'];
$mobile = $_GET['mobile'];
$amount = $_GET['amount'];

$data = array(
    'id' =>  $_GET['billplz']['id'],
    'paid_at' => $_GET['billplz']['paid_at'] ,
    'paid' => $_GET['billplz']['paid'],
    'x_signature' => $_GET['billplz']['x_signature']
);

$paidstatus = $_GET['billplz']['paid'];

if ($paidstatus=="true"){
  $receiptid = $_GET['billplz']['id'];
  $signing = '';
    foreach ($data as $key => $value) {
        $signing.= 'billplz'.$key . $value;
        if ($key === 'paid') {
            break;
        } else {
            $signing .= '|';
        }
    }
    
    $signed= hash_hmac('sha256', $signing, 'S-wzNn8FTL0endIB4wgi728w');
    if ($signed === $data['x_signature']) {
        

    }
    $sqlinsertpurchased = "INSERT INTO tbl_purchased(orderid,email,paid,status) VALUES('$receiptid','$userid', '$amount','paid')";
    $sqldeletecart = "DELETE FROM tbl_carts WHERE email='$userid'";

    if ($conn->exec($sqlinsertpurchased) && $conn->exec($sqldeletecart)) {
        echo "<script>alert('Payment Completed')</script>";
        echo "<script>window.location.replace('cart.php')</script>";
    }
}
else{
     echo "<script>alert('Payment Failed')</script>";
     echo "<script>window.location.replace('cart.php')</script>";
}
?>