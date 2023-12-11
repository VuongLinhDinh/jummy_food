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
<div class="row">

      <div class="image">
        <img src="./images/thank-you.jpg" alt="">
      </div>

      <form action="" method="post">
         <h3>tell us something!</h3>
         <p>
         Kính gửi quý khách hàng thân mến,

        Chúng tôi xin chân thành cảm ơn sự ủng hộ và lòng tin mà quý khách đã dành cho nhà hàng Jummy-Food. Đã là niềm vinh hạnh lớn khi chúng tôi được phục vụ và làm hài lòng mọi nhu cầu ẩm thực của quý vị.

        Chúng tôi cam kết tiếp tục nỗ lực không ngừng để mang đến những trải nghiệm ẩm thực tuyệt vời nhất cho quý khách hàng. Sự hài lòng của quý vị là động lực lớn để chúng tôi không ngừng hoàn thiện và phát triển.

        Một lần nữa, chân thành cảm ơn quý khách đã lựa chọn Jummy-Food. Chúng tôi mong được phục vụ quý khách mỗi khi quý vị có nhu cầu. Hãy tiếp tục ủng hộ và chia sẻ niềm vui ẩm thực cùng Jummy-Food!

        Trân trọng
         </p>
         <input type="submit" value="send message" name="send" class="btn">
      </form>

   </div>

</section>
<!-- footer section starts  -->
<?php include 'components/footer.php'; ?>
<!-- footer section ends -->
<!-- custom js file link  -->
<script src="js/script.js"></script>
</body>
</html>  