<?php
  namespace Api\Core;

  abstract class DataBase {
  
    public $pdo;
    protected $table_name;
    protected $host     = "localhost";
    protected $db       = "like_figma";
    protected $user     = "root";
    protected $password = "root";
    
    public function __construct($table_name) {
      try {
        $this->pdo = new \PDO("mysql:host=$this->host;dbname=$this->db", $this->user, $this->password);
        $this->pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, false);
        $this->pdo->setAttribute(\PDO::ATTR_STRINGIFY_FETCHES, false);
        // $this->pdo = new \PDO("mysql:host=localhost;dbname=like_figma", 'root', 'root');
        $this->table_name = $table_name;
      } catch (Exception $e) {
        echo 'Caught exception: ',  $e->getMessage(), "\n";
      }
    }

    abstract public function create($values);

    abstract public function delete($condition);

    abstract public function update($condition);
    
    abstract public function get($project_id);
    
    abstract public function one($query);
  }

?>