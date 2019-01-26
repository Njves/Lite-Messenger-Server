<?php 
define("locahost", "localhost");
define("db_user","root");
define("db_pass", "qwerty123");
define("db", "host1664981_users");
class Database
{
    
    public static $db_link;
    public function __construct()
    {
        $db_link = new mysqli(locahost,db_user,db_pass,db);
        if($db_link==true)
        {
            echo "База данных успешно подключена";
        }
    }
    public function get_db_link()
    {
        return $db_link;
    }
}
?>