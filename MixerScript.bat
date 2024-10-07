@if (@CodeSection == @Batch) @then
@echo off
	
	REM The following line performs a for loop that loops 200 times
	for /l %%x in (1, 1, 200) do (	

		REM Starts Mixer at the following location. Edit this location if your Mixer is located in another location
		Start ""  "C:\Program Files\QuixelMixer-2022.1.1\Quixel Mixer.exe" 
		echo Opening Mixer...

		REM This timeout allows the program open and load, adjust the time if your program is loading slower. Currently set at 8 seconds
		timeout /t 8 /nobreak

		REM Set your mouse coordinates. The first click should be pointed at "NEW MIX" once the program has opened
		call mouse moveTo 1151x393
		call mouse click
		echo Creating new mix

		REM This timeout allows the time for the next window to open
		timeout /t 2 /nobreak

		REM Set your mouse coordinates. The second click should be pointed at "OK" once the NEW MIX button has been clicked
		call mouse moveTo 1217x678
		call mouse click
		echo Opening new mix

		REM This timeout allows for the new mix to open, adjust if neccessary
		timeout /t 3 /nobreak

		REM Set your mouse coordinates. The third click should be pointed at the "LIBRARY" menu after the program launches the new mix
		call mouse moveTo 361x167
		call mouse click
		echo Opening Library submenu

		REM Another timeout, this one doesnt need to be adjusted
		timeout /t 1 /nobreak

		REM Set your mouse coordinates. The fourth click should be pointed at the "DOWNLOAD ALL ACQUIRED ASSETS" button with the LIBRARY menu 
		call mouse moveTo 380x238
		call mouse click
		echo Downloading all acquired assets

		REM This is the timeout that determines how long the program stays running while downloading assets
		REM I set this at 300 seconds initially and then 480 after I got about 8k assets downloaded
		timeout /t 480 /nobreak

		REM This is what kills Mixer to start the process over. You may need to open task manager to make sure your process name is the same as "Quixel Mixer". If not, then change that below to match
		taskkill /im "Quixel Mixer.exe" /T /F
		echo Closing Mixer

		REM Last timeout is there to allow the program to close out before relaunching it again
		timeout /t 3 /nobreak

	)


@end