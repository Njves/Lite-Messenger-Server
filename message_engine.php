<?php 
require_once "raw_database.php";
$data = $_POST;

class Message
{
    
    protected $unique_id;
    protected $user_sender;
    protected $text;
    protected $flags;
    protected $time;
    protected $user_reciver;
    protected $mysqli;
    
    function __construct($unique_id, $user_sender, $user_reciver, $text, $flags,$time)
    {
        $this->unique_id = $unique_id;
        $this->user_sender = $user_sender;
        $this->user_reciver = $user_reciver;
        $this->text = $text;
        $this->flags = $flags;
        $this->time = $time;
        $this->mysqli = new mysqli("localhost", "host1664981", "qwerty123", "host1664981_users");
        
        
        
    }
     function write_message_to_user()
     {
        $query = "INSERT INTO `user_message`(`unique_id`, `user_sender`, `user_reciver`, `text`, `flags`,`time`) VALUES ('$this->unique_id','$this->user_sender','$this->user_reciver', '$this->text','$this->flags','$this->time')";
        if($this->mysqli->query($query)==true)
        {
            $response = array("unique_id"=>$this->unique_id,"user_sender"=>$this->user_sender, "user_reciver"=>$this->user_reciver,"text"=>$this->text, "flags"=> $this->flags, $this->time);
            echo json_encode($response, JSON_UNESCAPED_UNICODE);
        }
        else
        {
           echo $this->mysqli->error();
        }
        $this->mysqli->close();
     }
     
}

class User
{
    private $login;
    private $email;
    private $user_unique_id;
    private $session;
    private $mysqli;
    function __construct($login, $email, $uniqid, $session)
    {
        $this->login = $login;
        $this->email = $email;
        $this->user_unique_id = $uniqid;
        $this->session=$session;
        $mysqli = new mysqli("localhost", "root", "", "host1664981_users");
        if($mysqli->connect_errno)
        {
            echo "Ошибка подключения ".$mysqli->connect_error;
        }
    }
    function get_login()
    {
        $query = "SELECT * FROM `users` where login='$this->login' and email='$this->email'";
        $result = mysqli_query($dbc, $query) or die("Ошибка запроса логина ".mysqli_error($dbc));
        $result_array = mysqli_fetch_assoc($result);
        return $result_array;
    }
}

    
    if(isset($data['user_reciver']))
    {
        $user_reciver = htmlspecialchars($data['user_reciver']);
    }
    if(isset($data['text']))
    {
        $text = htmlspecialchars($data['text']);
    }
    if(isset($data['user_sender']))
    {
        $user_sender = $data['user_sender'];
    }
    
    $message = new Message(uniqid("", true),$user_sender,$user_reciver,$text, 0,time());
    $message->write_message_to_user();
    




?>