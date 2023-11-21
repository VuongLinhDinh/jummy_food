<?php
if(isset($message)) {
    foreach($message as $message) {
        echo '
        <div class="message">
            <span>'.$message.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>
        ';
    }
}
?>

 <!-- header section starts  -->
 <header class="header">
        <section class="flex">
            <a href="home.html" class="logo">jummy-food 😋</a>
            <nav class="navbar">
                <nav class="navbar">
                    <a href="home.html">home</a>
                    <a href="about.html">about</a>
                    <a href="menu.html">menu</a>
                    <a href="orders.html">orders</a>
                    <a href="contact.html">contact</a>
                </nav>
            </nav>
            <div class="icons">
                <?php 
                    $count_user_cart_items = $conn->prepare("SELECT * FROM `cart`
                    WHERE user_id = ?");
                    $count_user_cart_items = 
                ?>
                <a href="search.html"><i class="fas fa-search"></i></a>
                <a href="cart.html"><i class="fas fa-shopping-cart"></i><span>(5)</span></a>
                <div id="user-btn" class="fas fa-user"></div>
                <div id="menu-btn" class="fas fa-bars"></div>
            </div>
            <div class="profile">
                <p class="name">Kun Aguero </p>
                <div class="flex">
                    <a href="profile.html" class="btn">profile</a>
                    <a href="#" class="delete-btn">logout</a>
                </div>
                <p class="account"><a href="login.html">login</a> or <a href="register.html">register</a></p>
            </div>
        </section>
    </header>
    <!-- header section end  -->