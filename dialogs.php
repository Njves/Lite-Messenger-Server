<?php
$dbc = mysqli_connect("localhost", "root", "", "host1664981_users") or die("Проблема с подключение к базе данных ".mysqli_error($dbc));
$data = $_POST;
$table = "dialogs";
//sender - отправитель
//reciver - получатель
if(isset($data['sender']))
{
    $sender = $data['sender'];
}
if(isset($data['reciver']))
{
    $reciver = $data['reciver'];
}
if(isset($data['message']))
{
    $message = $data['message'];
}
$login_field = "reciver";
$message_field = "message";
$user_field = "sender";
$query = "INSERT INTO `dialogs`(reciver, message, sender) VALUES('Njves', 'Daun', 'egor');";
mysqli_query($dbc, $query) or die("Ошибка запроса! ".mysqli_error($dbc));
$create_dialog_json = array("reciver"=>$data['reciver'],"message"=> "test message" ,"sender"=>$data['sender']);
echo json_encode($create_dialog_json);


mysqli_close($dbc);
?>
