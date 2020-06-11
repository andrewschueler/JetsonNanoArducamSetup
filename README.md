# JetsonNanoArducamSetup
This repo contains helpful instructions for installing the Arducam SDK on a Jetson Nano.

I am assuming that you are running on a Linux system. You could probably do this on Windows too if you are using Git bash.

This is what a good output looks like:

```bash
./sdksetup.sh 
Cloning into 'arducam_config_parser'...
remote: Enumerating objects: 32, done.
remote: Counting objects: 100% (32/32), done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 32 (delta 7), reused 30 (delta 5), pack-reused 0
Unpacking objects: 100% (32/32), done.
Cloning into 'ArduCAM_USB_Camera_Shield'...
remote: Enumerating objects: 1053, done.
remote: Counting objects: 100% (1053/1053), done.
remote: Compressing objects: 100% (533/533), done.
remote: Total 3951 (delta 610), reused 890 (delta 477), pack-reused 2898
Receiving objects: 100% (3951/3951), 72.73 MiB | 13.45 MiB/s, done.
Resolving deltas: 100% (2263/2263), done.
rm -f obj/*.o
rm -f lib/*
gcc -c -o obj/ini.o ini.c -Wall -O2 -std=c99 -fPIC  -I. -fvisibility=hidden -DARDUCAM_DLL -DARDUCAM_DLL_EXPORTS
gcc -c -o obj/arducam_config_parser.o arducam_config_parser.c -Wall -O2 -std=c99 -fPIC  -I. -fvisibility=hidden -DARDUCAM_DLL -DARDUCAM_DLL_EXPORTS
gcc -shared -o lib/libarducam_config_parser.so obj/ini.o obj/arducam_config_parser.o  -Wall -O2 -std=c99 -fPIC  -I. -fvisibility=hidden -DARDUCAM_DLL -DARDUCAM_DLL_EXPORTS
ar cr lib/libarducam_config_parser.a  -o obj/ini.o obj/arducam_config_parser.o
sudo install -m 644 lib/libarducam_config_parser.so /usr/lib/
[sudo] password for $USER: 
sudo install -m 444 arducam_config_parser.h /usr/include/
```
