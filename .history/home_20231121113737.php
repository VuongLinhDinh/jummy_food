<?php
include "./components/connect.php";
session_start();
if (!isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];
} else {
    
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <!-- font awesome cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!-- custom css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    






<!-- custom js file -->
<script src="js/script.js"></script>
</body>
</html>