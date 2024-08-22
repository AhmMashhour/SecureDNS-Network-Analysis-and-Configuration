#!/bin/bash

# Ensure the script is run with root privileges
if [ "$(id -u)" -ne "0" ]; then
  echo "Please run this script with root privileges (sudo)."
  exit 1
fi

# Define the input file containing captured packets
INPUT_FILE="capture.pcap"

# Start analyzing the packet file
echo "Starting analysis of packets in file $INPUT_FILE..."
tcpdump -r $INPUT_FILE

echo "Analysis complete."
