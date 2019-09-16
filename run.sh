# Add repos to /etc/apt/sources.list and update/upgrade (replace “$DISTRO” with correct distro): 

DISTRO=”stretch”

echo “# Begin user added repos: 
deb http://deb.debian.org/debian $DISTRO main contrib non-free
deb-src http://deb.debian.org/debian $DISTRO main contrib non-free

deb http://deb.debian.org/debian-security/ $DISTRO/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ $DISTRO/updates main contrib non-free

deb http://deb.debian.org/debian $DISTRO-updates main contrib non-free
deb-src http://deb.debian.org/debian $DISTRO-updates main contrib non-free” >> /etc/apt/sources.list

apt update
apt upgrade

# Install sudo:
apt install sudo -y
