1. Install Apache server on Ubuntu
sudo apt update
sudo apt upgrade
sudo apt install apache2	

2. Install php runtime and php mysql connector
sudo apt install php libapache2-mod-php php-mysql

3. Install MySQL server
sudo apt install mysql-server 
sudo apt install mysql-client

This installs Apache, PHP, and MySQL, and the necessary PHP and Apache modules.

4. Download wordpres by going to tmp directory and installing the files from online wordpress link 
cd /tmp
wget https://wordpress.org/latest.tar.gz

5. Unzip
sudo tar -xvf latest.tar.gz

6. Move wordpress folder to apache document root
sudo mv wordpress/ /var/www/html/

7. Connect to your mysql engine
mysql -h wordpressdatabase.cvk7ck8ezuft.us-east-1.rds.amazonaws.com -u Huzaifa -p

8. Create your database on the mysql engine, in this case RDS instance
CREATE DATABASE wordpressdatabase;

9. See if the database is created
SHOW DATABASES;

10. Grant the user Huzaifa appropiate permission and priviledges on the database created above
GRANT ALL PRIVILEGES ON wordpressdatabase.* TO 'Huzaifa'@'%';
FLUSH PRIVILEGES;
exit

11. Set the proper permissions so the web server can access the files:
sudo chmod -R 755 /var/www/html 
sudo chown -R www-data:www-data /var/www/html/wordpress

12. Change the document Root to /var/www/html/wordpress. This would let server to look for file from wordpress directory
sudo nano /etc/apache2/sites-available/000-default.conf

13. Go to wordpress installation page and install wordpress. Enter database details for wordpressdatabase
 https://huzaifaportfolio.com/wp-admin/install.php

14. Create wp-config.php directory
sudo nano wp-config.php
// copy and paste the command given on wordpress 

15. Command to restart/reload apache server
sudo systemctl restart apache2









