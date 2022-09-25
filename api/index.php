<?php
    header("Access-Control-Allow-Origin: *");
    header('Access-Control-Allow-Headers: *');

    include("DbConnect.php");
    $conn = new DbConnect();
    $db = $conn->connect();
    $method = $_SERVER['REQUEST_METHOD'];

    switch($method) {
        case 'GET':
            $sql = "SELECT * FROM users";
            $stmt = $db->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetchAll(PDO::FETCH_ASSOC);        
            echo json_encode($users);
            break;
        case 'POST':
            $string = file_get_contents("https://randomuser.me/api/?results=10");
            $json = json_decode($string, true);
            foreach($json["results"] as $row){
                $nameFirst = $row["name"]["first"];
                $nameLast = $row["name"]["last"];
                $name = "{$nameFirst} {$nameLast}";
                $sql = "INSERT INTO users VALUES (null, :name, :age, :gender, :city, :country, :email, :salt, :sha256, :picture)";
                
                $stmt = $db->prepare($sql);
                $stmt->bindParam(':name', $name);
                $stmt->bindParam(':age', $row["registered"]["age"]);
                $stmt->bindParam(':gender', $row["gender"]);
                $stmt->bindParam(':city', $row["location"]["city"]);
                $stmt->bindParam(':country', $row["location"]["country"]);
                $stmt->bindParam(':email', $row["email"]);
                $stmt->bindParam(':salt', $row["login"]["salt"]);
                $stmt->bindParam(':sha256', $row["login"]["sha256"]);
                $stmt->bindParam(':picture', $row["picture"]["thumbnail"]);
                
                if($stmt->execute()) {
                    $data = ['status' => 1, 'message' => "Records successfully added"];
                } else {
                    $data = ['status' => 0, 'message' => "Failed to add new records."];
                }
                echo json_encode($data);       
            }
            break;
    }
?>