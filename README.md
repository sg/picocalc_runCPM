# picocalc-runCPM
![runcpm_picocalc](https://github.com/user-attachments/assets/2458fa54-2655-4d5b-84d9-264f62ececc6)

This is a port of runCPM on the Picocalc using picocalc-text-framwork<br>
This is a RP2350W version. RP2350, RP2040 and RP2040W should work too

# Credits

- runCPM Copyright (c) 2017 Mockba the Borg  (https://github.com/MockbaTheBorg/RunCPM)
- picocalc-text-framework Copyright (c) 2025 Blair Leduc  (https://github.com/BlairLeduc/picocalc-text-starter)
- Largely inspired by the work of Guido Lehwalder (https://github.com/guidol70/RunCPM_RPi_Pico)
<br>
Thank you to these guys for the great packages.

# Installation

- copy the uf2 file you'll find in the release section to your picocalc, or the SD card if you use an uf2 loader.
- create an "A" directory on the root of the SD card, as described in the runCPM repo : [DISK_A](https://github.com/MockbaTheBorg/RunCPM/tree/master/DISK)
- create the other drives you'll find here : [CPM Toolset](https://obsolescence.wixsite.com/obsolescence/multicomp-fpga-cpm-demo-disk) "Download Tool Set"
- copy the file [TINST.DTA](support_files/TINST.DTA) over /E/3/TINST.DTA to get a working TP3 Editor 
<br>
To test TP3, enter these commands :
<br>

```
E:
USER 3
TURBO
```
<br>
To test WordStar, enter these commands :
<br>

```
F:
USER 3
WS
```
<br>

# Updates

## v1.4

The USB Serial port is now activated. Connect the mini-USB of the pico board to a computer and run a VT100 emulator to get a remote screen/keyboard to your picocalc.<br>
With my version of Linux, I use minicom like so : "minicom -D /dev/ttyACM0"<br>
Parameters are : 115200 8N1<br>

## v1.3

Added the BATTERY.COM and LGHTCALC.COM utilities in support_files. Sources are in the same DIR.
At boot, the battery level is also displayed.

- BATTERY will show the battery level, the LCD backlight level and the keyboard backlight level.
- LGHTCALC K \<nn\> : nn from 0 to 255, will set the keyboard backlight level
- LGHTCALC L \<nn\> : nn from 0 to 255, will set the LCD backlight level

Z80 I/O ports are defined like this :

- port 201 (read) : Battery level
- port 202 (read/write) : LCD backlight (0 to 255)
- port 203 (read/write) : keyboard backlight (0 to 255)

## v1.2a

Added the SETFONT utility in support_files. Source is in SETFONT.PAS

- SETFONT 4 will select the 4x10 font
- SETFONT 5 will select the 5x10 font
- SETFONT 8 will select the 8x10 font

## v1.2

Thanx to **rugosi** we have now 80 columns.

## v1.1a

I made a boo-boo using Ctrl-S and Ctrl-A for XON/XOFF, since these keys are used by all editors. So XOFF is now KEY_F5 and XON is KEY_F4

## v1.1

- Pico speed faster (to 200Mhz)
- Supports BRK to some extent (returns to CP/M)
- Supports XON/XOFF (to stop long DIRs and such)
- Added BELL

## Bugs

Probably a lot, all to blame on me. Use this only for fun, no guarantee for anything. You've been warned.
I haven't done any extensive tests, but Turbo Pascal 3.0 seems to work, including the editor functions, and the Tinstaller TINST.COM so it should work pretty well to some extent.
<br>
<br>
Happy CPMing !
