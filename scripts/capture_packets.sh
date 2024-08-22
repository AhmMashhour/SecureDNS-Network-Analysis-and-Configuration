#!/bin/bash

# Ensure the script is run with root privileges
if [ "$(id -u)" -ne "0" ]; then
  echo "Please run this script with root privileges (sudo)."
  exit 1
fi

# Define the network interface
INTERFACE="any"

# Define the output file for captured packets
OUTPUT_FILE="capture.pcap"

# Start capturing packets
echo "Starting packet capture on interface $INTERFACE..."
tcpdump -i $INTERFACE -vvv -w $OUTPUT_FILE host www.yummyrecipesforme.com

echo "Packets have been saved to $OUTPUT_FILE"
