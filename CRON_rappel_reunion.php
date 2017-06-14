<?php

require('/var/www/compostage/include/config.inc.php');
require('/var/www/compostage/include/connexion.inc.php');
require('/var/www/compostage/include/model.inc.php');
require('/var/www/compostage/plugins/PHPMailer/class.phpmailer.php');

// préparation connexion
$connect = new connection();
$cron = new cron($connect);

// Date jours plus 2 
$date_jplus2=date('Y-m-d', strtotime('+2 days'));


//selectionnne les reunion qui ont lieue dans 48h
$result=$cron->select_reunion($date_jplus2);

//envoi un email a chaque participant

//boucle le select.faire un test avec deux reunion 

foreach($result as $key){
 	 
$id_reunion=$key->id_reunion;
	
$result=$cron->emailRappelReunion($id_reunion);


}

?>
