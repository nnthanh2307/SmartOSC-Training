<?php

    namespace Mvc\process;

    //load library
    class library
    {
        public function load($libName = null) {
            $libPath = "\Mvc\process\\$libName";
            $libName = new $libPath();
                return $libName;
   
        }
    }
?>