<?php

    namespace Mvc\process;
    
    class LoadTemplate
    {
        public function loadHeader() {
            require_once "template/header.php";
        }

        public function loadFooter() {
            require_once "template/footer.php";
        }
    }

?>