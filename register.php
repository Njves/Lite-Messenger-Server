
<?php 
require 'database.php';
$data = $_POST;
$errors = array();

if(R::count('users', "login = ?", array($data['login']))>0)
    {
    $errors[] = "Пользователь с таким логином уже существует";
  //  $response = "error_user_login_already_exists";
  $response = "error_user_login_already_exists";
}
/*if($data['password']< 6)
{
    $errors[] = "Пароль содержит меньше 6 символов";
    $response = "error_user_password_contains_less_6_char";
}*/
if($data['password']==null)
{
    $errors[] = "Пароль отсутствует";
    $response = "error_user_password_blank";
}

if(1== preg_match('/^((([0-9A-Za-z]{1}[-0-9A-z\.]{1,}[0-9A-Za-z]{1})|([0-9А-Яа-я]{1}[-0-9А-я\.]{1,}[0-9А-Яа-я]{1}))@([-A-Za-z]{1,}\.){1,2}[-A-Za-z]{2,})$/u',$data['email']))
{

}else
{
 $errors[] = "Не допустимый адрес электронной почты";
    $response = "error_user_email_exists_invalid_chars";
}

if (!preg_match("/^[a-zA-Z0-9\s]+$/", $data['login'])){
    $errors[] = "Пользователь с таким логином уже существует";
    $response = "error_login_contains_invalid_chars";
  }
 
if(R::count('users', "email = ?", array($data['email']))>0)
{
    $errors[] = "Пользователь с таким логином уже существует";
    $response = "error_user_email_already_exitsts";
}

if(empty($errors))
{
    $uid = uniqid("",true);
    $user = R::dispense('users');
    $user->login = $data['login'];
    $user->email = $data['email'];
    $user->date = date("Y-m-d H:i:s");
    $user->unique_id = $uid;
    $user->password = password_hash($data['password'], PASSWORD_DEFAULT);
    $user->session = true;
    R::store($user);

    $json_response = array("error"=>count($errors), "uid"=>$uid, "user"=>array("login"=>$data['login'],"email"=>$data['email'],"created_at"=>date("Y-m-d H:i:s")));
    
    echo json_encode($json_response);

    
}
else{
   
    
    $json = array("error"=>count($errors),"error_msg"=>$response);
    
    echo json_encode($json);

}

/*$users = R::count('users', "login = ? ", array('krytoi'));
echo $users;*/

?>