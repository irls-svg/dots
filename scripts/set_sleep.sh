#!/bin/zsh

## NOTE: 
# requires m-cli:
#brew install m-cli

# need to add defaults + pmset to sudoers e.g.:
#username ALL=(ALL) NOPASSWD:/usr/bin/pmset

## Get SSID name
ssid=$(m wifi status | awk '/[^B]SSID/{print $2}')

## Set screensaver time based on SSID
if [ "$ssid" = "QUT" ]; then
    defaults -currentHost write com.apple.screensaver idleTime 600
    sudo pmset -b displaysleep 10 
    sudo pmset -b lowpowermode 1
    #echo "Screensaver time set to 10 minutes"
else
    defaults -currentHost write com.apple.screensaver idleTime 300
    sudo pmset -b displaysleep 5
    sudo pmset -b lowpowermode 0
    #echo "Screensaver time set to 5 minutes"
fi
