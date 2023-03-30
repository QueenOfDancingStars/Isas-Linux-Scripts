# This is not fully my work! Most of this code was written by x70b1 at https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/battery-combined-udev. Credit goes to them, I am only someone who tweaked it for Asahi support.
This is a simple module which shows if computer is charging or not, and also shows the battery percentage. There is a 5 second delay between detection because I made it sleep for 5 seconds, so it would not take too many resources on my computer. If you want to change that, you are very welcome to do so in line 35.
## Configuration:
To get this to work properly, you have to copy the `95-battery.rules` file to the `/etc/udev/rules.d/` directory.
## Adding To Polybar
To properly add this to PolyBar, you have to edit both your modules and your config file.
In your config file, there should be a section where it says `modules-___`. Add `isabattery-udev` to any of them. I personally prefer it on the right, but that's up to you.
In your modules file, add the code shown below, so it will import the script and make it usable in polybar.
## Code
``[module/isabattery-udev]
type = custom/script
exec = /home/isabella/.config/polybar/scripts/isabattery-udev.sh
tail = true``
