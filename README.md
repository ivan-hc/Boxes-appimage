# Boxes-appimage
This is my first attempt to port the virtualization solution also known as "GNOME Boxes" to the AppImage format.

NOTE that this is an EXPERIMENTAL BUILD, do not use it as a daily client, rely on the one from your repository or the Flatpak.

Since July 4, 2023, the New Version will be built by following the ArchImage method, learn more at https://github.com/ivan-hc/ArchImage 

## NEW VERSION
This repository creates and distributes the unofficial Appimage of GNOME Boxes built on top of JuNest, the lightweight Arch Linux based distro that runs, without root privileges, on top of any other Linux distro.

Current estimated size: just over 500 MB (it will be lightened once the tests are completed)

#### Download
Continuous builds are available at https://github.com/ivan-hc/Boxes-appimage/releases/tag/continuous

#### What works?
- I'm no expert on this program, but it seems to be able to load VirtualBox .vdi files.

#### What does not works?
- I can't download the available operating systems (or at least I couldn't find the iso, and then start it);
- selected the Windows 10 iso, the program does not start, nor does it return "understandable" errors from the terminal.

--------------------------
## OLD VERSION
The old version is built on top of Debian Testing, and still does not work, so I've replaced it with the ArchImage. This guide only has educational purposes.

Current estimated size: just over 150 MB

##### Files
This repository contains:
- A modified version of [github.com/ivan-hc/AppImaGen](https://github.com/ivan-hc/AppImaGen), including some additions to made Boxes run (see [here](https://github.com/ivan-hc/Boxes-appimage/blob/main/appimagen));
- A TXT file containing all the answers of this workflow (see [here](https://github.com/ivan-hc/Boxes-appimage/blob/main/list.txt));
- A script named "build.sh that does what its name already suggests (see [here](https://github.com/ivan-hc/Boxes-appimage/blob/main/build.sh)).

#### How to build Boxes AppImage by yourself
This AppImage is built from Debian Testing (to see the .deb package, click [here](https://packages.debian.org/en/testing/gnome-boxes)) 

    git clone https://github.com/ivan-hc/Boxes-appimage.git
    cd Boxes-appimage
    chmod a+x appimagen build.sh
    ./build.sh
    cd ..
    version=$(wget -q https://packages.debian.org/en/testing/gnome-boxes -O - | grep "Package:" | head -1 | cut -c 27- | rev | cut -c 2- | rev)
    mv Boxes-appimage/*AppImage Boxes-$version-x86_64.AppImage

#### What works
The AppImage runs normally.

![Istantanea_2023-05-23_03-15-33 png](https://github.com/ivan-hc/Boxes-appimage/assets/88724353/379094a0-97d0-45e5-bf51-cc2a968c9c56)

#### What does not work
Boxex requires the access to some online resources to recommend downloads or to made a basic enviroment to run the offline ISO you have downloaded, this is a tipic error message I get:

     util-app.vala:199: Failed to download recommended-downloads file: Non è disponibile il supporto a TLS
Due to this I'm unable to check if it is possible to install and use a Virtual Machine.

https://github.com/ivan-hc/Boxes-appimage/assets/88724353/6e1dbf86-3662-43fb-84d6-4344333852bd

#### Want to help me improve this AppImage? Just clone this repo and merge a pull request, any improvements are welcome.
