#!/bin/sh

#git clone https://github.com/kvalo/ath10k-firmware.git

board_id=$(lspci | grep -o 'Atheros QC[^.]*\s' | awk '{print $2}')

ath10k_firmware=/home/joaolourenco/labs/ath10k-firmware

#hw2.1
cp $ath10k_firmware/$board_id/hw2.1/board*.bin /lib/firmware/ath10k/$board_id/hw2.1/
cp $ath10k_firmware/$board_id/hw2.1/firmware-5.bin_SW_RM.1.1.1-00157-QCARMSWPZ-1 /lib/firmware/ath10k/$board_id/hw2.1/firmware-5.bin

#hw3.0
cp $ath10k_firmware/$board_id/hw3.0/board*.bin /lib/firmware/ath10k/$board_id/hw3.0/
cp $ath10k_firmware/$board_id/hw3.0/firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 /lib/firmware/ath10k/$board_id/hw3.0/firmware-4.bin
cp $ath10k_firmware/$board_id/hw3.0/4.4.1/firmware-6.bin_WLAN.RM.4.4.1-00151-QCARMSWPZ-2 /lib/firmware/ath10k/$board_id/hw3.0/firmware-6.bin




