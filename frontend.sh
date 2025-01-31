apt update
apt install nginx -y
systemctl enable nginx
systemctl start nginx

#This service is written in NodeJS, Hence need to install NodeJS in the system
apt install npm -y

#Let's download the HTDOCS content and deploy under the Nginx path.
cd /var/www/html
mkdir vue && cd /var/www/html/vue
cd /var/www/html/vue/frontend
npm install
npm start

#Update Login and todo Ip address.
cd /var/www/html/vue/frontend
cd config

#Finally restart the service once to effect the changes.
systemctl restart nginx
systemctl status nginx
