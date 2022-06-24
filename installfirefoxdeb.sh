# Install firefox as a deb not a snap
sudo add-apt-repository ppa:mozillateam/ppa
sudo apt install --target-release 'o=LP-PPA-mozillateam' firefox
sudo echo 'Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501' >/etc/apt/preferences.d/mozillateamppa
sudo apt update
