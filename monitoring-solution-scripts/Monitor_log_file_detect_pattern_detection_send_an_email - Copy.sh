#!/bin/bash

# Log Monitoring
CURRENTSTR=$(tail -fn0 logfile | grep -m 1 -e "String" -e "String" -e "String" -e "String")
>/tmp/mailtest
if [[ "$CURRENT" != *"Error"* ] || [ "$CURRENTSTR" != *"Failed"* ]]; then
    mailbody="Erorr: $CURRENTSTR%"
    echo "From: monitoringuser@domain.com" >> /tmp/mailtest
    echo "To: sreteammonitoring@domain.com" >> /tmp/mailtest
    echo "Subject: Error while runing the services" >> /tmp/mailtest
    echo "" >> /tmp/mailtest
    echo $mailbody >> /tmp/mailtest
    cat /tmp/mailtest | /usr/sbin/sendmail -t
fi