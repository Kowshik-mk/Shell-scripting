#!/bin/bash

#this will start service when the service is failed

service="nginx"

if systemctl is-active --quiet $service;
then 
	echo "$service is running"

else 
	sudo systemctl start  $service
fi
