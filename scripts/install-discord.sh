#!/bin/sh

$discord=$1

apt-get install libappindicator1 libc++1;

dpkg -i $discord
