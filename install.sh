#!/bin/bash
echo "Install oled display"
sudo cp mpd_oled /usr/local/bin
sudo chmod +x /usr/local/bin/mpd_oled
sudo cp mpd_oled.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable mpd_oled
sudo systemctl start mpd_oled
echo "Config overlay"
sudo cp /boot/config.txt /boot/config.txt2
sudo cp config.txt /boot/
echo "Install driver"
sudo cp snd-soc-ddplayer-dac.ko /lib/modules/4.19.118-v7l+/kernel/sound/soc/bcm/snd-soc-ddplayer-dac.ko
sudo cp ddplayer-dac.dtbo /boot/overlays/ddplayer-dac.dtbo
echo "Install dacs list into webui"
cp dacs.json /volumio/app/plugins/system_controller/i2s_dacs/dacs.json
cp mpd.conf.tmpl /volumio/app/plugins/music_service/mpd/mpd.conf.tmpl
