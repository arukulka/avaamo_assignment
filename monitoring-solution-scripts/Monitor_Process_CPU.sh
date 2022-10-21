#!/bin/bash
# Process Monitoring
PPID=$(ps -ef | grep -i 'nginx' | grep -v grep | awk '{print $2}') 
if [[ -z ${PPID} ]]; then
    echo " Nginx is not running"  >>/tmp/monitoring_pp.txt
    mailbody="Erorr: $PPID%"
    echo "From: monitoringuser@domain.com" >> /tmp/mailtest
    echo "To: sreteammonitoring@domain.com" >> /tmp/mailtest
    echo "Subject: Nginx process ALERT" >> /tmp/mailtest
    echo "" >> /tmp/mailtest
    echo $mailbody >> /tmp/mailtest
    cat /tmp/mailtest | /usr/sbin/sendmail -t

# CPU Monitoring
cat /proc/loadavg | awk '{print $1}' | awk '{ if($1 > 80) printf("Current CPU Utilization is: %.2f%\n"), $0;}' | mail -s "High CPU Alert" example@gmail.com