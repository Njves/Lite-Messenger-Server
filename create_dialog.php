<?php
$data=$_GET;
$login =$data['login'];
$reciver = $data['reciver'];
$dbc = mysqli_connect("localhost", "host1664981", "qwerty123", "host1664981_users");
$query = "SELECT * FROM `dialogs` where user_sender='$login' and user_reciver='$reciver'";
$result = mysqli_query($dbc,$query) or die(mysqli_error($dbc));
while($row=mysqli_fetch_assoc($result))
{
    print_r($row);
}
?>