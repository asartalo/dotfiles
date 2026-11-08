#!/bin/bash
###############################
# Set up a fresh debian install
###############################

set -e

echo "Add Debian Non-Free and Contrib Sources"

if ! [ -e "/etc/apt/sources.list.d/contrib.sources" ]; then
  # Contrib
  content="Types: deb
URIs: http://ftp.us.debian.org/debian/
Suites: trixie
Components: main contrib
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
"
  echo "$content" | sudo tee "/etc/apt/sources.list.d/contrib.sources" > /dev/null
fi

sudo apt update

echo "Install Codecs"
sudo apt install \
  ffmpeg gstreamer1.0-libav # codecs

echo "Use timesync instead of ntp"
sudo apt purge ntp # purge ntp
sudo apt install systemd-timesyncd # install
sudo systemctl start systemd-timesyncd # start
timedatectl # check status

echo "Install Flatpak"
sudo apt install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Install Flatseal"
sudo apt install flatseal

echo "Install Snap"
sudo apt install snapd && sudo snap install core
sudo apt install gnome-software-plugin-snap

echo "Enable unattended upgrades"
sudo apt install unattended-upgrades
sudo dpkg-reconfigure unattended-upgrades

echo "Install Firewall"
sudo apt install gufw

echo "Install Microsoft Fonts"
sudo apt install ttf-mscorefonts-installer

echo "Install VS Code"
sudo snap install --classic code

echo "Install Android Studio"
sudo apt install qemu-system libvirt-daemon-system
sudo apt install libtk-3-dev clang ninja-build
sudo snap install android-studio --classic

echo "Install Alacritty"
sudo snap install alacritty --classic

echo "Install Diligence"
sudo snap install diligence

echo "Install Flatpak Apps"
flatpak install --user \
  com.google.Chrome \
  com.transmissionbt.Transmission \
  com.valvesoftware.Steam \
  md.obsidian.Obsidian \
  net.ankiweb.Anki \
  org.blender.Blender \
  org.gimp.GIMP \
  org.gnome.Boxes \
  org.kde.kdenlive \
  org.tenacityaudio.Tenacity \
  org.videolan.VLC \
  org.gnome.gThumb

echo "Next Steps:"
echo "- Install Printer drivers: https://support.brother.com/g/b/downloadlist.aspx?c=us_ot&lang=en&prod=dcpt310_all&os=128"

