Prerequisite:
Quixel Mixer is a program used for editting and downloading Quixel megascans from the Quixel.com library. If you download and install this program, and sign in with your quixel account, you will be able to see all the assets you have acquired within it. If you have yet to acquire all the assets you should run the script found here: https://gist.github.com/jamiephan/0c04986c7f2e62d5c87c4e8c8ce115fc This will add all the assets to your "collection", which you can then download with Quixel Mixer.

Click "Code" and download the zip. Then just extract and open the MixerScript.bat with notepad and read the comments in there. Each comment starts with REM. You will possibly need to make some adjustments to the script based on where Mixer was installed on your PC. You will also need to find the mouse coordinates of your pointer so that you can map it to the buttons in Mixer correctly.

For mouse coordinates there are some options, but I have autoit already installed so I just used it. You can download that here https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3.zip

Once you extract it look for a program called Au3Info_x64.exe and open that. You should have a little window open now and if you hit the right arrows a bunch of times you'll reveal a mouse tab. Click that and then click anywhere on your screen and you can see the coordinates of your mouse. Then simply use that to map the mouse click to the correct buttons in the script.
** Make sure when you open Mixer to find the coordinates that you do not maximize or change the position of the Mixer window at all. You need the coordinates to match up each time the script loops, and taking coordinates of a window that you manually moved first wont match up. So don't move the window while doing this.

Once you have all that done, all you need to do is double click MixerScript.bat and it'll do the rest. You need to make sure though that mouse.bat and MixerScript.bat are both in the same folder. Hopefully that helps you out and is easy enough for you to figure out.

mouse.bat is not made by me. It can be found here https://github.com/npocmaka/batch.scripts/blob/master/hybrids/.net/c/mouse.bat and all credit goes there as well.
