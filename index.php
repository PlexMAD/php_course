<?php
session_start();
require_once 'vendor/connect.php';
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=s, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Chat</title>
</head>

<body>
    <section>
        <form action="vendor/new_message.php" method="post">
            <label class="form__label" for="message">Введите сообщение</label>
            <textarea class="message" name="message" id="message" cols="30" rows="10"
                placeholder="Ваше сообщение"></textarea>
            <label class="form__label" for="_#">Выберите тему</label>
            <select class="form__input" name="_#" id="_#">
                <?php
                $result = $connect->query("SELECT * FROM `#` ");
                while ($row = $result->fetch_assoc()) {
                    $value = $row['name'];
                    $id = $row['id'];
                    echo '<option value="' . $id . '"> ' . $value . ' </option>';
                } ?>
                <option value="new_one">Новая тема</option>
            </select>
            <label class="form__label channel_listener" for="channel">Выберите канал</label>
            <select class="form__input channel_listener2" name="channel" id="channel">
                <?php
                $result = $connect->query("SELECT * FROM `channel` ");
                while ($row = $result->fetch_assoc()) {
                    $value = $row['name'];
                    $id = $row['id'];
                    echo '<option value="' . $id . '"> ' . $value . ' </option>';
                } ?>
            </select>
            <button class="form__submit channel_listener3" type='submit'>Отправить сообщение</button>
        </form>
        <form action="vendor/add_theme.php" method="post" id="new_theme">
            <label for="theme_input">Введите название новой темы</label>
            <input type="text" class="form__input" name="new_input" id="theme_input">
            <button class="form__submit" type="submit">Отправить новую тему</button>
        </form>
    </section>
    <script src="main.js"></script>
</body>

</html>