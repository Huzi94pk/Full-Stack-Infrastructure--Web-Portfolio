// I faced alot of issues with elementor plugin. One of them was the elementor edit page would keep loading. Since, I serve my website on https, and some contents of elementor plugins are served on http, I had to debug the mixed content error by creating .htaccess and defining redirect rules. The other issue was with limited memory assigned to .php module. First Install Really Simple SSl plugin and follow the steps below 
1. Navigate to wordpress directory
cd /var/www/html/wordpress

2. Open wp-config.php file
sudo nano wp-config.php 

3. Under <?php add the following code
//Begin Really Simple SSL Server variable fix
   $_SERVER["HTTPS"] = "on"; // allow SSL in wordpress files
//END Really Simple SSL

//Begin Really Simple SSL session cookie settings
@ini_set('session.cookie_httponly', true);
@ini_set('session.cookie_secure', true);
@ini_set('session.use_only_cookies', true);
//END Really Simple SSL cookie settings
define('WP_MEMORY_LIMIT', '256M'); // this increases memory 

4. Navigate to php.ini configuration file in apache2 directory
cd /etc/php/8.1/apache2

5. Edit php.ini to increase memory 
sudo nano php.ini

6. Find the line memory_limit and increase memory
memory_limit =256M

