<?php 

class connection {
   private $server;
   private $user;
   private $password;
   private $database;
   private $port;

   function __construct()
   {
       $listdata = $this->dataConnection();
       foreach ($listdata as $key => $value) {
           $this->server = $value['server'];
           $this->user = $value['user'];
           $this->password = $value['password'];
           $this->database = $value['database'];
           $this->port = $value['port'];
       }
       $this->connection = new mysqli($this->server,$this->user,$this->password,$this->database,$this->port);
       if ($this->connection->connect_errno) {
           echo "Bad connection";
           die();
       }
   }

   private function dataConnection(){
       $address = dirname(__FILE__);
       $jsondata = file_get_contents($address . "/" . "index");
       return json_decode($jsondata, true);
   }
}

?>