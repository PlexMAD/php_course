<?php 
    session_start();
    require_once 'connect.php';
    $theme = $_POST['new_input'];
    $date = date('Y-m-d');
    $sql = mysqli_query($connect, "INSERT INTO `#`(`name`, `data`) VALUES (' $theme','$date')");
    header('Location: ../index.php')
?>