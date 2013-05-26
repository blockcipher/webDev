webDev
======

web development on centos

#设置用户可以访问自动挂载的windows分区
usermod -G vboxsf arron
reboot
#软连接挂载的目录到当前目录
ln -sv /media/sf_github/ dev
#安装nginx依赖的软件
sudo yum -y install pcre-devel
sudo yum -y install openssl-devel
#获取nginx
wget http://nginx.org/download/nginx-1.4.1.tar.gz
#编译安装
tar xzf nginx-1.4.1.tar.gz
./configure --prefix=/usr/local/nginx --pid-path=/var/run/nginx.pid --lock-path=/var/lock/nginx.lock --with-http_ssl_module --with-http_dav_module --with-http_flv_module --with-http_realip_module --with-http_gzip_static_module --with-http_stub_status_module --with-mail --with-mail_ssl_module --with-debug --http-client-body-temp-path=/var/tmp/nginx/client --http-proxy-temp-path=/var/tmp/nginx/proxy --http-fastcgi-temp-path=/var/tmp/nginx/fastcgi --http-uwsgi-temp-path=/var/tmp/nginx/uwsgi --http-scgi-temp-path=/var/tmp/nginx/scgi 
make && make install
ln -s /usr/local/nginx/sbin/nginx /usr/sbin/

wget http://small-script.googlecode.com/files/nginx
chmod 755 nginx
mv nginx /etc/init.d/
update-rc.d nginx defaults