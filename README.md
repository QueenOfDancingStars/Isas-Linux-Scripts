# Isa's Linux Scripts
This is just a collection of scripts I've written for personal use to do many things. The majority will probably be polybar additional modules with their scripts, but I feel like they could be useful for someone.
## Warning About PolyBar Scripts
These scripts were written for maximum support on Asahi Linux, meaning that a lot of the devices mentioned in the script will need to be changed if you are not on Asahi. This should not be that difficult. 
When I say this, I specifically mean the battery module that I edited for mac support. To change the device so it works on any platform, go into the code and change `/sys/class/power_supply/macsmc-ac` and `/sys/class/power_supply/macsmc-battery` to whichever battery you have. You can find this by going into the `/sys/class/power_supply/` folder, and checking which ones are there. If you know the model of your laptop, it should not be that difficult to figure out which one is the right one.
## Support
I make absolutely no promises with support, since I am not that experienced with this, and I am doing this mostly for fun.
If you want any help or questions, you can message me, but do not be disappointed if I am not able to help or just do not reply at all. There are way more qualified people out there to help with bash, and these scripts were basically my first introduction to bash. I have learned the basics but I am still very far from good, but I will try my best to help anyone who needs it.
