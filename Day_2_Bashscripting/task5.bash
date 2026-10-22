#!/bin/bash
#Date: 16-10-2026
#Description: Create a bash script to install Apache Tomcat on an EC2 server.
#For Apche Tomcat Java is a prerequisite, we will check if java is available then we will install tomcat

echo Checking java...
if ! java -version
then
        echo Java is not installed. Installing Java...
        dnf install java-17-amazon-corretto-devel -y

        if [ $? -ne 0 ]
        then
                echo Java installation failed!
                exit 1
        fi
fi

echo Checking Java Installation...
if java -version
then
        echo Java is available.
        echo
        echo Downloading Apache Tomcat now to path apache-tomcat /opt/apache-tomcat
        echo
        wget -O /opt/apache-tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.61/bin/apache-tomcat-10.1.61.tar.gz
        if [ $? -eq 0 ]
        then
                echo Apache Tomcat was downloaded successfully, please go to /root/opt/apache-tomcat.tar to start the service
        else
                echo Tomcat download was failed!
                exit 1
        fi
fi

