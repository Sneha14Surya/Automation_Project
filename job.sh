file="/etc/cron.d/automation.sh"
if [ ! -f "$file" ]; then
   touch /etc/cron.d/automation.sh
   echo "0 8 * * * root /root/Automation_Project/automation.sh" >> automation.sh 
fi   
