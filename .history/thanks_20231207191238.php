<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
   header('location:home.php');
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>thanks</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'components/user_header.php'; ?>
<!-- header section ends -->

<div class="heading">
   <h3>thanks</h3>
   <p><a href="html.php">home</a> <span> / thanks</span></p>
</div>
<section class="contact">
<img src="./images/thank-you.jpg" alt="">
<div class="box-container">
    <h3>Lời cảm ơn!!</h3>
</div>

</section>
<!-- footer section starts  -->
<?php include 'components/footer.php'; ?>
<!-- footer section ends -->
<!-- custom js file link  -->
<script src="js/script.js"></script>
</body>
</html>  