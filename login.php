<?php 

$data = $_POST;
$errors = array();
$login = $data['login'];
$email = $data['email'];
$password = $data['password'];
$crypt_password = password_hash($password, PASSWORD_DEFAULT);

$dbc = mysqli_connect("localhost", "host1664981", "qwerty123", "host1664981_users");

$query = "SELECT * from `users` where email='$email' or login='$login'";

$result = mysqli_query($dbc, $query) or die("Запрос прошел неудачно");
    if(mysqli_num_rows($result)<=0)
    {
        $errors[] = "Пользователь с таким логином или почтой не найден!";
    }
    
    else
    {
    while($row = mysqli_fetch_assoc($result))
    {
       
        
       
        
        if(password_verify($password, $row['password']))
        {
            $db_login = $row['login'];
            $db_email = $row['email'];
            $db_uid = $row["unique_id"];
            $db_created_at = $row['date'];
            $response = array("error"=>count($errors), "uid"=>$db_uid, "user"=>array("login"=>$db_login, "email"=>$db_email, "created_at"=>$db_created_at));
            echo json_encode($response);
        }
        else
        {
            $errors[] = "Неверный пароль пожалуйста, введите еще раз";
        }
    }
}
if(empty($errors))
{
        
    
}
else
{
    $response = array("error"=> count($errors), "errors_msg"=> array_shift($errors));   
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
}
    


mysqli_close($dbc);

?>