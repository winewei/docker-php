# php7.2 base image
`base debian:stretch-slim`
```
- Include php-fpm 7.2
- Include phpunit
- Include composer
- Include pecl
```
## php modules:
```
[PHP Modules]
bcmath
Core
ctype
curl
date
dom
exif
fileinfo
filter
ftp
gd
gettext
hash
iconv
igbinary
json
libxml
mbstring
mongodb
mysqli
mysqlnd
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
redis
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
sqlite3
standard
swoole
sysvsem
tokenizer
xml
xmlreader
xmlrpc
xmlwriter
zip
zlib

[Zend Modules]
```
## thanks
- source code copy from: <https://github.com/shansongxian/docker>
- token-init.sh copy from:  <https://github.com/Kaggggggga/docker-php>
