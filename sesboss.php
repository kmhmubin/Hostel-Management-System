<?php

require('./include/sessionManager.php');
if(isset($_POST['serial']))
{
    $ses = new \sessionManager\sessionManager();
    $ses->start();
    $ses->Set("serial",$_POST['serial']);
    echo "Done";

}
else
{
    echo "Not Done".$_POST['serial'];

}


