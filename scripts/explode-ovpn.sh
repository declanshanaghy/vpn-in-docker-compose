#!/bin/bash

# This script will extract the certificate and key from an .ovpn file
# into their own files, which makes it possible to use them to configure
# the VPN using Ubuntu's network manager

# Usage example:
# >> ovpnconvert username.dev.ovpn

# You can keep following these instructions here:
# https://naveensnayak.wordpress.com/2013/03/04/ubuntu-openvpn-with-ovpn-file/

sed '1,/<ca>/d;/<\/ca>/,$d' $1 > $1.ca.crt
sed '1,/<cert>/d;/<\/cert>/,$d' $1 > $1.client.crt
sed '1,/<key>/d;/<\/key>/,$d' $1 > $1.client.key
sed '1,/<tls-auth>/d;/<\/tls-auth>/,$d' $1 > $1.ta.key