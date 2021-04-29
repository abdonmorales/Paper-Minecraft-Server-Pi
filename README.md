# Minecraft Forge Server

![Forge Minecraft Server Logo](images/logo-forge.jpeg)

**Starter project enabling you a Minecraft Server using just a Raspberry Pi 4 or Jetson Nano.**

This project has been tested on a Raspberry Pi 4 B 4GB & Nvidia Jetson Nano. I do not recommend using a Raspberry Pi 3 or older. They have not enough RAM and power to calculate all the things. :boom:

## Why Forge Minecraft Server?
* Modded Minecraft Server! 🌕
* It is free. No costs, no big server and no complication. :free:
* Why host on a computer? A Pi is power efficient! :rocket:
* You can easy maintain the files on the Pi by using your PC. :computer:

## Hardware required
* Any computer with Linux, Windows, or MacOS
* Raspberry Pi 4B (We recommend the 4GB or the 8GB model. 1GB is not enough!) or Nvidia Jetson Nano (optional, applies only for those who want to use these SBC)
* A fan or cooling system to prevent lag caused by throttling
* A 16GB or greater micro SD Card (We always recommend SanDisk Extreme Pro SD cards)(optional, only applies for the SBCs)
* Power supply

## Software required

* A download of this project (of course)
* A Linux distrobution (with JDK)

## Connect to the server :satellite:

The hostname of the Raspberry Pi or computer

**Note:** The IP address also works.

![Server-IP](images/Server-IP.png)

Now you have a Forge Server! :sunglasses::

**NOTE:** This works only in the connected Wifi/Home network. If you want to play worldwide click here: https://github.com/AlexProgrammerDE/balena-server/blob/master/README.md#play-worldwide-optional-earth_americas

![Minecraft Screenshot](images/minecraft-screenshot.png)

## Connect to the terminal :satellite:

The server has no console input option in the cloud dashboard, so you need `RCON`. The port is `25575` and the password is `balena`. It is a protocol for connecting to the server.
There are many clients, but you can pick one here:

* mcrcon: https://github.com/Tiiffi/mcrcon/releases (NOTE: You will need for starting this script this batch file if you are using windows (Just paste it in the unzipped directory.): https://github.com/AlexProgrammerDE/RCON-Script/blob/master/launch.bat)

* Minecraft Server RCON: https://alexprogrammerde.github.io/Minecraft-Server-RCON.rar

## Connect to the file-directory :satellite:
You can use Samba, if you want to connect to it over the network!

## Change hostname
You can change the hostname through the `raspi-config` setting in the terminal or through Settings in GNOME (or depending on your distrobution

**NOTE:** If you decide to change the hostname, you will have to use your new hostname within Minecraft to connect to the server, instead of `balenaminecraftserver.local`.

## Play worldwide (optional) :earth_americas:

Once you’ve perfected the setup of your server on your local network, you might be interested in unveiling your server to the rest of the world! Here’s how you can enable remote access and allow players to connect via the Internet.

![NO-IP Picture](images/NO-IP.png)

If you’d like to allow friends outside of your local network to join your server, you’ll need to set up dynamic DNS (DDNS) to expose your Pi to the outside world. This example uses a service called No-IP, which has a free tier for people who want to try DDNS out, though other options and methods do exist as well. In the case of this example, you will need to: 

* Create an account with [No-IP](https://www.noip.com/sign-up) by visiting their website.
* After creating the account and logging in, create a Hostname (example: balena.serverminecraft.net) by [following their documentation](https://www.noip.com/support/knowledgebase/getting-started-with-no-ip-com/).
* Set up Port Forwarding: You will need to route your Minecraft traffic to port 25565 on your Pi. To do this, you will log in to your home router and setup Port Forwarding. This step varies by particular brand of modem or router, but the No-IP documentation does a good job of describing the process [here](https://www.noip.com/support/knowledgebase/general-port-forwarding-guide/). You may need to follow instructions specific to your modem or router if the No-IP documentation does not contain your particular type.
* Optional: You can login to No-IP with your router to keep the IP Address current in case it changes. That allows the router to connect automatically to No-IP. Here is a [guide by No-IP](https://www.noip.com/support/knowledgebase/how-to-configure-ddns-in-router/) on how to accomplish this.
* Paste your public / external internet address in the box labeled IP Address into the No-IP dashboard. You're done. 👍

For a deeper look at setting up remote access, please [reference this guide](https://www.noip.com/support/knowledgebase/getting-started-with-no-ip-com/) (Note: You can skip the DUC part).

## Custom Server (optional) :eyeglasses:

If you want to customize your server even further, but don't know where to start, take a look at some of the servers listed here for ideas:

* Spigot (Vanilla Java Edition): https://getbukkit.org/download/spigot
* Vanilla from Minecraft (Vanilla Java Edition): https://getbukkit.org/download/vanilla
* Paper (Vanilla Java Edition): https://papermc.io/downloads
* Forge (Modded Java Edition): http://files.minecraftforge.net/

Note: Minecraft Server uses Paper and Forge (checkout the project's branches). It is an efficient and powerful server. It is compatible with spigot and bukkit plugins.

I encourage you to take your server build even further! There are many tutorials out there on server customization-- this article only touches on a few ideas. If you need help, please reach out by submitting an [issue on GitHub](https://github.com/abdonmorales/Minecraft-Server/issues).

This project is in active development so if you have any feature requests or issues please submit them here on GitHub. PRs are welcome, too. :octocat:

Here is a little server demo :crown::

![Server Demo](images/server-demo.gif)
