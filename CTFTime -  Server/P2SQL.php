<?php

class P2SQL
{

    private $_connection;

    private static $_instance;

    // The single instance
    private $_host = "localhost";

    private $_username = "root";

    private $_password = "";

    
    private $_database = "CTFTime";

    /*
     * Get an instance of the Database
     * @return Instance
     */
    public static function getInstance()
    {
        if (! self::$_instance) { // If no instance then make one
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    // Constructor
    private function __construct()
    {
        $this->_connection = new mysqli($this->_host, $this->_username, $this->_password, $this->_database);
        
        // Error handling
        if (mysqli_connect_error()) {
            echo 'loi ket noi mySQL';
            trigger_error("Failed to conencto to MySQL: " . mysqli_connect_error(), E_USER_ERROR);
        }
        
        mysqli_set_charset($this->_connection, "utf8");
    }

    // Magic method clone is empty to prevent duplication of connection
    private function __clone()
    {}

    // Get mysqli connection
    public function getConnection()
    {
        return $this->_connection;
    }
    
    
    
    public function executeNonQuery($query, $parameter = array())
    {
        $conn = self::getConnection();
        $stmt = $conn->prepare($query);
        
        if(!empty($parameter))
        {
            $type = str_repeat('s', count($parameter));
            
            $stmt->bind_param($type, ...$parameter);
        }
        
        $stmt->execute();
        $result = $stmt->affected_rows; // $result < 0 is false 
        
       
        //$conn->close();
        return $result;
    }
    

    public function executeQuery($query, $parameter = array())
    {
        $conn = self::getConnection();
        $stmt = $conn->prepare($query);
        
        if(!empty($parameter))
        {
            $type = str_repeat('s', count($parameter));
            
            $stmt->bind_param($type, ...$parameter);
        }
 
        $stmt->execute();
        $result = $stmt->get_result();
        
     
        //$conn->close();
        return $result;
    }
    
    

    public function executeReaderListString($query, $parameter = array())
    {
        
        $conn = self::getConnection();
        $stmt = $conn->prepare($query);
        
        if(!empty($parameter))
        {
            $type = str_repeat('s', count($parameter));
            
            $stmt->bind_param($type, ...$parameter);
        }
        
        $stmt->execute();
        $result = $stmt->get_result();
        
        $arr = array();
        foreach ($result as $row){
            array_push($arr, reset($row));
        }
        
    
       // $conn->close();
        return $arr;
    }
    
    
    public function executeReader($query, $parameter = array())
    {
      
        $arr = P2SQL::getInstance()->executeReaderListString($query,$parameter);
        if(!empty($arr))
            return $arr[0];
        return false;
    }
    
    
    
    
}

?>