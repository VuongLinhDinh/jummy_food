<?php
if(isset($message)) {
    foreach($message as $message) {
        echo '
        <div class="message">
            <span></span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>
        
        ';
    }
}
?>
