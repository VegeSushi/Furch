#!/bin/bash

systemctl enable NetworkManager

chmod +x /usr/local/bin/firstboot.sh
/usr/local/bin/firstboot.sh

chsh -s /usr/bin/fish root