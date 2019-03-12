<?php
 
  $address = "127.0.0.1";
  $port = 4545;
   
  $socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
   
  if( !$socket ) exit( socket_strerror( socket_last_error() ) );
  else echo 'Socket_created!'."\r\n";
   
  if( !socket_bind($socket, $address, $port) ) exit( socket_strerror( socket_last_error() ) );
  else echo 'Socket_binded!'."\r\n";
   
  if( !socket_listen($socket, 10) ) exit( socket_strerror( socket_last_error() ) );
  else echo 'Socket_listen!'."\r\n";
   
  $connect = socket_accept($socket);
   
  $result = socket_read($connect,1024);
   
  echo 'Common data: '.$result."\r\n";
   
  socket_write($connect,'You sending me: '.$result."\r\n");
   
  socket_shutdown($connect);
  socket_close($socket);
   
?>