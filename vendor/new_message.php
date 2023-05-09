<?php 
    session_start();
    require_once 'connect.php';
    $text = $_POST['message'];
    $_ = $_POST['_#'];
    $channel = $_POST['channel'];
    $author = $_SESSION['user'];
    $date = date('Y-m-d');
    echo $date;
    $sql = mysqli_query($connect, "INSERT INTO `sms`( `#_id`, `user_id`, `channel_id`, `description`, `data`, `save`) VALUES (' $_','$author','$channel','$text','$date','$save')");
    header('Location: ../index.php')
?>