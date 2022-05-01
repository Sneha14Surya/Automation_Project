s3_bucket="upgrad-sneha"
name="sneha"

#to update the packages
sudo apt update -y

#to install apache
apt-get install apache2

#ensure apache is installed	
apache2 -v

#start the apache server
sudo /etc/init.d/apache2 start

#check the status of apache2 service
sudo systemctl status apache2
	
#to make the tar file	
timestamp=$(date '+%d%m%Y-%H%M%S')
tar -cf ${name}-httpd-logs-${timestamp}.tar /var/log/apache2/access.log
cp ${name}-httpd-logs-${timestamp}.tar /tmp/

# Installing awscli 
sudo apt update
sudo apt install awscli

#copy to S3 bucket
aws s3 \
cp /tmp/${name}-httpd-logs-${timestamp}.tar \
s3://${s3_bucket}/${name}-httpd-logs-${timestamp}.tar