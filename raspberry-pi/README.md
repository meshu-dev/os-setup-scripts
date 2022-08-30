# Raspberry Pi OS

## Install Guides

- [Pi Apps](https://github.com/Botspot/pi-apps)
- [Docker / Docker Compose](https://www.jfrog.com/connect/post/install-docker-compose-on-raspberry-pi)
- [BeeKeeper Studio](https://snapcraft.io/install/beekeeper-studio/raspbian)
- [NodeJS](https://snapcraft.io/install/node/raspbian)
- [Oh My Zsh](https://divinenanny.nl/blog/2021-08-07-install-oh-my-zsh-on-raspberry-pi/)
- [Screen Lock](https://thepihut.com/blogs/raspberry-pi-tutorials/how-to-lock-your-raspberry-pi-screen)

## Issues

The following are issues I came accross and resolved.

### Internet stops working when running docker containers

When running docker containers for the first time the internet would stop working in the browser.

To resolve the issue I did the following.

Open the following file.

```
vim /etc/dhcpcd.conf
```

Uncomment all commented static lines under the following headings... 

```
# Example static IP configuration:
...

# It is possible to fall back to a static IP if DHCP fails:
...

# fallback to static profile on eth0
...
 
```

Save changes then restart machine.

When docker containers run the internet should work as normal.


Reference: [Raspberry Pi Stack Exchange](https://raspberrypi.stackexchange.com/questions/58809/rpi-loses-its-wlan0-configuration-when-any-docker-container-is-started)
