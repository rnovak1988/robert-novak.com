#!/bin/bash

if [ ! -f "/usr/sbin/httpd" ]; then
	echo "Installing HTTPD....\n"
	yum install -y httpd
	echo "Installed httpd...\n"
else
	echo "HTTPD Already installed\n"
fi

if [ ! -f "/usr/bin/php" ]; then
	echo "Installing php..."
	yum install -y php
	echo "Installed php..."
else
	echo "php already installed"
fi

