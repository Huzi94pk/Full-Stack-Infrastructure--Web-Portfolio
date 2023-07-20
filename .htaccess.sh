//To resolve the issure of mixed content when serving request on https, and prevent redirect loops, .htaccess file must be created in wordpress directory
1. Navigate to wordpress directory
cd /var/www/html/wordpress

2. Create .htacess
touch .htaccess

3. Grant writable permission
chmod 664 .htaccess

4. Edit the file
sudo nano .htaccess

5. Copy and paste the content of .htacces
# BEGIN WordPress
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
# END WordPress

# BEGIN HTTPS Redirection
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteCond %{HTTP:X-Forwarded-Proto} !https
RewriteRule ^(.*)$ https://%{HTTP_HOST}/$1 [R=301,L]
</IfModule>
# END HTTPS Redirection

