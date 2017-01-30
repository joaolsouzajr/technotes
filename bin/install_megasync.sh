#!/bin/sh
wget https://mega.co.nz/linux/MEGAsync/Fedora_25/x86_64/megasync-2.9.10-1.x86_64.rpm
dnf install megasync-2.9.10-1.x86_64.rpm
rm megasync-2.9.10-1.x86_64.rpm
