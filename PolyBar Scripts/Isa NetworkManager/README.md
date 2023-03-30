# While I basically re-wrote the entire script in my own way, there was a lot of inspiration from [x70b1](https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/network-networkmanager) and their network manager script.
The reason I made this script is that the script on the polybar-scripts repository didn't really do what I wanted. I just wanted if the network is connected or not, not all the info. This is a simple script that uses nmcli to grep the networks status, and accoridngly display it in a formatted way in your taskbar. If you don't like the symbols I used for the status on the taskbar, you are very welecome to change it.
While this should work on almost all Wi-Fi devices since most use wlan0, if you are using ethernet or another method you might have to tweak the nmcli command. I used `device show wlan0`, but if you have another name for it, then you can change that line and it should work accordingly.
This code might look a bit jank, but this is because it is my first time writing a bash script on my own, and first time learning to use the nmcli command. If you would like to suggest pulls and improvements, I will gladly accept them.
## Installation
The installation for this module is quite simple.
First, you have to get the script itself and put it in whichever directory. The module will locate it at `~/home/.config/polybar/scripts/` because that is where I put my scripts, but you can change it very easily by editing one line in the module code which will be shown below.
Secondly, you have to put the module inside the modules.ini file so it can actually be located in the program. As I said before, it is pointing to my preferred diectory, but you can change it by editing the code below. You just add this code in your modules file, and it should work.
Lastly, you have to add it to your config.ini file so it actually appears on your taskbar. There should be a line that says `moudles-___`, and you add it at that line. I added underscores because there are three of them, and it is up to personal preference if you want it on the left, center, or right. I personally prefer it on the right.
## Tweaks
You can change this code to have as short as a delay as you want, but I have it set at 5 seconds just for safety, so it does not take away performance from my computer. It can be found at line 21.
As I said before, you can also change the symbols it display on the taskbar, at line 10 and 16.
## Module Code
```ini
[module/isa-networkmanager]
type = custom/script
exec = ~/.config/polybar/scripts/isa-networkmanager.sh
tail = true
```
