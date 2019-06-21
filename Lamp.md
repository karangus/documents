  https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04

 1.    sudo apt-get update--> for packages update
 2.    sudo apt-get install apache2 --> installing the apache server
 3.    sudo  systemctl restart apache2 -->restrat the apache2 server
 4.    sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql --> to install the php modules
  5.    sudo systemctl restart apache2
  6.     create the file  /var/www/html/info.php
        <?php
        phpinfo()
        ?> to create the home page 
        