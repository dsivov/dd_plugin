#!/bin/bash
echo "Install oled display"
sudo cp mpd_oled /usr/local/bin
sudo chmod +x /usr/local/bin/mpd_oled
sudo cp mpd_oled.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable mpd_oled
sudo systemctl start mpd_oled
