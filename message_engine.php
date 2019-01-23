<?php 
$data = $_POST;
$dbc = mysqli_connect("localhost", "root", "", "host1664981_users");
class MessageUserStorage
{
    public $unique_id;
    public $text;
    public $user_sender;
    public $user_reciver;
    public $flags;
    public $time;
    
}
class User
{
    private $login;
    private $email;
    private $user_unique_id;
    private $session;
    function __construct($login, $email, $uniqid, $session)
    {
        $this->login = $login;
        $this->email = $email;
        $this->user_unique_id = $uniqid;
        $this->session=$session;
    }
    function get_login($dbc)
    {
        $query = "SELECT * FROM `users` where login='$this->login' and email='$this->email'";
        $result = mysqli_query($dbc, $query) or die("Ошибка запроса логина ".mysqli_error($dbc));
        $result_array = mysqli_fetch_assoc($result);
        return $result_array;
    }
}
$msgUserStorage = new MessageUserStorage();
$msgUserStorage->unique_id = uniqid('',true);
$msgUserStorage->text = $data['text'];
$msgUserStorage->user_sender = $data['user_sender'];
$msgUserStorage->user_reciver = $data['user_reciver'];
$msgUserStorage->flags = 0;
$msgUserStorage->time = time();


$user = new User("SuperSukaLesha", "LeshaSukaMeow@mail.ru", "240727534", 1);

echo json_encode($user->get_login($dbc));

$query = "INSERT INTO `user_message`(`unique_id`, `user_sender`, `user_reciver`, `text`, `flags`,`time`) VALUES ('$msgUserStorage->unique_id','$msgUserStorage->user_sender','$msgUserStorage->user_reciver', '$msgUserStorage->text','$msgUserStorage->flags','$msgUserStorage->time')";

$result = mysqli_query($dbc, $query) or die("Ошибка запроса ".mysqli_error($dbc));



/*$data = $_POST;
if(isset($data['message']))
{
    $message = $data['message'];
}
if(isset($data['user_sender']))
{
    $user_sender = $data['user_sender'];
}
if(isset($data['user_reciver']))
{
    $user_reciver = $data['user_reciver'];
}
$date = time();

echo $data."<br/>";
echo $date;*/


?>