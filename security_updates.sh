#!/bin/bash


#update package list

sudo yum update -y


#install security updates

sudo yum upgrade -y 

#clean up unneccessary packages

sudo yum autoremove -y
