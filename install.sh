INSTALLER_PATH=$(sudo find /home -type f -name 'discord-*.tar.gz')

sudo tar -xzvf $INSTALLER_PATH -C /opt/

sudo touch /usr/share/applications/discord.desktop
sudo cat << endDiscord >> /usr/share/applications/discord.desktop
[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=/opt/Discord/Discord
Icon=/opt/Discord/discord.png
Type=Application
Categories=Network;InstantMessaging;
endDiscord