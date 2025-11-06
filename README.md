Unofficial AppImage of GNOME Boxes.

From here you can download the script to build on top of [JuNest](https://github.com/fsquillace/junest), the lightweight Arch Linux based distro that runs, without root privileges, on top of any other Linux distro.

| ![Istantanea_2024-07-26_02-13-48](https://github.com/user-attachments/assets/55634de4-b572-4df4-bc1f-804f5f5f7e80) | ![Istantanea_2024-07-26_02-43-41](https://github.com/user-attachments/assets/d848e5bb-697b-45ea-8ae2-bb00118a828a) | ![Istantanea_2024-07-26_03-03-42](https://github.com/user-attachments/assets/0890c0e6-f23c-4abc-acc8-42a5db0b138b) |
| - | - | - |

---------------------------------

## Important!
Since its internal bubblewrap version mounts /var, you need to install "libvirt" daemons and drivers from your package manager.

On Debian and derivatives:
```
sudo apt install libvirt-daemon libvirt-daemon-system
```
On Arch Linux and derivatives:
```
sudo pacman -S libvirt
```

---------------------------------

### How it works

1. Download the AppImage from https://github.com/ivan-hc/Boxes-appimage/releases
2. Made it executable
```
chmod a+x ./*.AppImage
```
3. Run it
```
./*.AppImage
```
This AppImage does NOT require libfuse2, being it a new generation one.

---------------------------------

### How to build it

This is an Archimage, it is enough to follow the instructions on the README of the project https://github.com/ivan-hc/ArchImage

In brief:
1. Create an empty directory, for example "tmp"
2. Download this script in that directory
3. Open a terminal in that directory (NO absolute path, NO drag & drop)
4. Run the script, like this `./*-junest.sh`
5. Wait until the end of the process
6. Run the AppImage

---------------------------------

## Troubleshot

### ◆ Lack of USB support
It is still a work in progress.

---------------------------------

## Credits

- Conty https://github.com/Kron4ek/Conty
- JuNest https://github.com/fsquillace/junest
- Archimage https://github.com/ivan-hc/ArchImage

------------------------------------------------------------------------

## Install and update it with ease

### *"*AM*" Application Manager* 
#### *Package manager, database & solutions for all AppImages and portable apps for GNU/Linux!*

[![sample.png](https://raw.githubusercontent.com/ivan-hc/AM/main/sample/sample.png)](https://github.com/ivan-hc/AM)

[![Readme](https://img.shields.io/github/stars/ivan-hc/AM?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AM/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AM?label=&style=for-the-badge)](https://github.com/ivan-hc/AM/blob/main/LICENSE)

*"AM"/"AppMan" is a set of scripts and modules for installing, updating, and managing AppImage packages and other portable formats, in the same way that APT manages DEBs packages, DNF the RPMs, and so on... using a large database of Shell scripts inspired by the Arch User Repository, each dedicated to an app or set of applications.*

*The engine of "AM"/"AppMan" is the "APP-MANAGER" script which, depending on how you install or rename it, allows you to install apps system-wide (for a single system administrator) or locally (for each user).*

*"AM"/"AppMan" aims to be the default package manager for all AppImage packages, giving them a home to stay.*

*You can consult the entire **list of managed apps** at [**portable-linux-apps.github.io/apps**](https://portable-linux-apps.github.io/apps).*

## *Go to *https://github.com/ivan-hc/AM* for more!*

------------------------------------------------------------------------

| [***Install "AM"***](https://github.com/ivan-hc/AM) | [***See all available apps***](https://portable-linux-apps.github.io) | [***Support me on ko-fi.com***](https://ko-fi.com/IvanAlexHC) | [***Support me on PayPal.me***](https://paypal.me/IvanAlexHC) |
| - | - | - | - |

------------------------------------------------------------------------
