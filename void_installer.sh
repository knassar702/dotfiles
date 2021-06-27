sudo xbps-install -Syu
sudo xbps-install -u xbps
sudo xbps-install -S vim base-devel libX11-devel libXft-devel libXinerama-devel python3-pip git gcc mpv xorg sxhkd htop chromium kitty
sudo xbps-install -S void-repo-nonfree
sudo xbps-install -Syu
sudo xbps-install nvidia
pip3 install pywal
sudo ln -s ~/.local/bin/wal /usr/bin/wal
mkdir ~/.cache
cp -r .cache/* ~/.cache
mkdir personal
mkdir personal/MEMES personal/projects personal/suckless
cd personal/suckless
git clone https://github.com/knassar702/dwm
cd dwm
sudo make clean install
mkdir ~/.config/sxhkd
cp -r sxhkd/* ~/.config/sxhkd/sxhkdrc

echo """
 ____   ___  _   _ _____     ____  
|  _ \ / _ \| \ | | ____|  _|  _ \ 
| | | | | | |  \| |  _|   (_) | | |
| |_| | |_| | |\  | |___   _| |_| |
|____/ \___/|_| \_|_____| (_)____/ 
                                   

"""
