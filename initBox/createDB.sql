CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress';
FLUSH PRIVILEGES;
