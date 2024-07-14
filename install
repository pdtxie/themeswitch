#!/bin/sh

swiftc themeswitchd.swift -o themeswitchd
cp com.tim-xie.themeswitch.plist ~/Library/LaunchAgents
sudo cp themeswitch themeswitchd /usr/local/bin/
launchctl load -w ~/Library/LaunchAgents/com.tim-xie.themeswitch.plist
launchctl start com.tim-xie.themeswitch
