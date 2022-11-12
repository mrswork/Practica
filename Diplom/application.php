<?php
    require "connect.php";
    // var_dump($_GET);
    // var_dump($_POST);
    header("Content-type: application/json; charset=utf-8");    
    function addApplication($name,$phone,$age,$con){
        $applicationQeury = $con->prepare('INSERT INTO `application`( `name`, `phone`, `age`) VALUES (:name,:phone,:age)');
        $applicationQeury->execute(['name' => $name,'phone' => $phone, 'age' => $age]);
        return ["status" => true ,"message" =>"Ваша заявка принята на рассмотрение","id" =>$con->lastInsertId()];
    }

    if(empty($_POST['name'])) {
        echo json_encode(["status" => false ,"message" =>"Введите имя"],JSON_UNESCAPED_UNICODE);
    } else if(empty($_POST['phone'])){
        echo json_encode(["status" => false ,"message" =>"Укажите номер телефона"],JSON_UNESCAPED_UNICODE);
    } else if(empty($_POST['age']) || !is_numeric($_POST['age'])){
        echo json_encode(["status" => false ,"message" =>"Укажите возраст"],JSON_UNESCAPED_UNICODE);

    } else {
        $temp = addApplication(htmlspecialchars($_POST['name'], ENT_QUOTES),htmlspecialchars($_POST['phone'], ENT_QUOTES),$_POST['age'],$con);
        echo json_encode($temp,JSON_UNESCAPED_UNICODE);
        // var_dump ($temp);
        // header('Location: /');
    }