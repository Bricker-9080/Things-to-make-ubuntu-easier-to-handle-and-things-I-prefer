# Install firefox as a deb not a snap
sudo add-apt-repository ppa:mozillateam/ppa
sudo apt install --target-release 'o=LP-PPA-mozillateam' firefox
sudo echo 'Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501' >/etc/apt/preferences.d/mozillateamppa
sudo apt update

# Install discord as a deb
wget https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb
sudo apt install ./discord-0.0.18.deb
rm discord-0.0.18.deb

# Install spotify client as a deb not a snap
sudo apt install curl
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Install steam deb not flatpak or snap
sudo apt install wget git
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
sudo apt install ./steam.deb
rm steam.deb
cd ~/
