# Scripts  
my cool scripts  
  
---
  
# Universal Esp  
Updated March 5, 2022  
v1.6.9  
- Box Esp  
- Tracers  
- Name Esp  
- Skeleton Esp  
- Health Bars  
- Head Dots  
- Look Tracers  
  
![Universal Esp Preview](https://i.imgur.com/SRn96sO.png)  
  
```
https://pastebin.com/raw/5zw0rLH9
```  
[Documentation](https://github.com/zzerexx/scripts/blob/main/UniversalScriptAPI.md)  
### UI Version  
Updated March 12, 2022  
```
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/UniversalEspUI.lua"))()
```  
### Performance Version  
Updated March 5, 2022  
Boxes, Names, zero customizability, optimized asf  
Supports `SetFunction` and `ResetFunction` for compatibility!  
```
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/UniversalEspPerformance.lua"))()
```  
  
## Update v1.6.9  
Main Changes  
- (1.6.7) Added `FaceCamera`; makes Boxes and Health Bars appear 2D [Preview](https://streamable.com/glsw2f)
  - This can make the esp look weird from certain perspectives
- (1.6.8) Added `AlignPoints`; further improves 2D effect, only works while `FaceCamera` is enabled
  - This may cause esp to have abnormal behavior when looking from certain angles
- (1.6.9) no longer detected on bad business
  
UI Changes  
- Updated to utilize [Config Manager](https://github.com/zzerexx/scripts/blob/main/ConfigManagerDocs.md)
- Executing Universal Esp and Aimbot simulataneously will now wait until the first ui loads
- `Toggle Key` is easier to set with the keybind button
- `UI Toggle Key` is now customizable with the keybind button
- `UI Toggle Key` can be saved in configs
- `Add esp to players upon joining` can be saved in configs
- Added `Safe Mode`; prevents script error detections (recommended on games like bad business)
  
---
  
# Universal Aimbot  
Updated March 5, 2022  
v1.1.14  
```
https://pastebin.com/raw/nwqE7v07
```  
[Documentation](https://github.com/zzerexx/scripts/blob/main/UniversalScriptAPI.md)  
### UI Version  
Updated March 12, 2022  
```
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/UniversalAimbotUI.lua"))()
```  
## Update v1.1.14  
Main Changes  
- no longer detected on bad business  
  
UI Changes  
- Updated to utilize [Config Manager](https://github.com/zzerexx/scripts/blob/main/ConfigManagerDocs.md)
- Executing Universal Esp and Aimbot simulataneously will now wait until the first ui loads
- `Toggle Key` is easier to set with the keybind button
- `UI Toggle Key` is now customizable with the keybind button
- `UI Toggle Key` can be saved in configs
  
## NOTICE  
```
You are allowed to use Universal Esp and Aimbot in your script as long as you credit me (zzerexx or zzerexx#3970)
Read UniversalScriptAPI.md for more info
```  
  
---
  
# Keystrokes  
Updated November 24, 2021  
minecraft keystrokes  
shows W, A, S, D, LMB, RMB, Space, CPS, and FPS  
  
---
  
# Config Manager  
Updated March 11, 2022  
v1.0.0  
Easily manage script configurations.  
[Documentation](https://github.com/zzerexx/scripts/blob/main/ConfigManagerDocs.md)
  
---
  
# Waypoint Manager  
Updated February 5, 2022  
v0.3.0 (unfinished)  
todo: 
- [x] configs  
- [x] creation dates  
- [x] ability to close/minimize ui (forgot to add lol)  
- [ ] keybinds  
  
---
  
# Draw Stuff  
Updated January 7, 2022  
draw stuff with the drawing library  
circles are shit but idc  
  
---

# Advanced Message Box Generator  
Updated January 10, 2022  
A gui that can assist in generating advanced message boxes  
  
---
  
# Krnl mousemoverel Fix  
an attempt to fix krnl's broken mousemoverel  
`#1` works like normal mousemoverel, but **does not work** with aimbot scripts (instantly moves to destination)  
`#2` is similar to mousemoverel and **works** with aimbot scripts (slowly moves to destination)  
  
---
  
# Custom Crosshair v1  
Updated June 4, 2021  
v1.2.1  
Create your own custom crosshair using the Drawing Library  
```
https://pastebin.com/raw/eGiC2jPg
```  
  
---
  
# Synapse Functions  
synapse functions for everyone  
cannot guarantee that protect gui is fully secure (works against recursive ffc tho)  
```
secure_call
protect_gui
clonefunction
```  
  
---
  
# Custom Crosshair v2  
Updated November 25, 2021  
v1.0.2  
A better version of Custom Crosshair v1  
This version does not use the drawing library  
  
## Update v1.0.2  
Added Rainbow Color.  
Movement Error now supports Climbing and Swimming.  
Fixed some issues with configs.  
Fixed show/hide for the preset colors and config part of the ui.  
  
---
  
# Aimblox Gui (PATCHED)
Updated July 24, 2021  
v2  
```
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/Aimblox.lua"))()
```  
  
---
  
# Murder Mystery 2 Utilities  
Updated April 10, 2021  
v1.0.3  
Check the settings for features  
```
https://pastebin.com/raw/FwYmgtCX
```  
  
---
  
# More Color3  
Updated July 25, 2021  
Provides more Color3 functions.  
  
---
  
# Aimblox Silent Aim (PATCHED)  
Updated May 26, 2021  
v1.0.0  
basic silent aim  
  
---
  
# Custom Output  
Updated June 9, 2021  
v1.1.0  
basically just the developer console  
F9 to toggle  
  
---
  
# Synapse to Script-Ware  
Updated February 27, 2022  
Allows you to use Synapse functions on Script-Ware!  
  
**Loader**  
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/SynapseToScriptWare.lua"))()
```  
  
[Supported Functions](https://pastebin.com/raw/WeFREykX)  
  
---
  
# Synapse to Krnl
Updated January 3, 2022  
Allows you to use Synapse functions on Krnl!  
  
**Loader**  
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/SynapseToKrnl.lua"))()
```  
  
[Supported Functions](https://pastebin.com/raw/T78hpe3S)  
  
---
  
# Counter Blox Spectator Viewer  
see who is spectating you  
u can drag it anywhere too very cool  
skidded from hexagon btw  
  
---
  
# Trigger Bot
Clicks whenever your mouse is hovering over a player  
press H to toggle  
  
---
  
# CPS Counter  
shows your cps and fps  
works best on 60 fps, anything higher or lower can be inaccurate  
  
---
  
# Lowest Ping  
Finds a server with the lowest ping  
Takes longer on larger games due to the amount of servers  
i think this only works if you live in the EST timezone  
  
---
  
# Phantom Forces Rainbow Gun  
basic rainbow gun script  
  
---
  
# owo-ify  
owo-ifier  
  
---
  
# prison life  
work in progress  
  
---
  
# encrypt  
custom encrypter  
Updated December 17, 2021  
- optimized encryption/decryption (slightly faster)  
```lua
zz.encrypt(data,key,accesskey)
zz.decrypt(data,key)
```  
  
---
  
# Synapse XI  
Updated March 12, 2021  
v1.0.0   
syanpse in roblos  
not updating cuz boring
  
---
  
# Krnl Internal
Updated ???  
krnl in roblos  
not everything works  
i made this a while ago just wanted to release it now  
