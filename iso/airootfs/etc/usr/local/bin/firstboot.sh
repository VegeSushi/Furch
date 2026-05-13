#!/bin/bash

systemctl enable NetworkManager
systemctl enable flatpak-system-helper

flatpak remote-add --if-not-exists flathub \
https://flathub.org/repo/flathub.flatpakrepo