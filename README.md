# UsbMC
~ Minecraft Tiny And Portable ~

<img width="1138" height="618" alt="Screenshot_72" src="https://github.com/user-attachments/assets/064a2d3a-0a91-45c5-9ac9-72aa560315d4" />

## What is UsbMC?
UsbMC is a **portable build of Minecraft 1.0.0 (for now)**. 
It compress all files required to play Minecraft in one folder.
Not requiring Java or installation.

## Why?
- **No installation needed** → Just unzip, adjust and play.
- **Compatible in old PCs** → Tested on Windows XP (With Service Pack 3)
- **USB-friendly** → Take it anywhere, worlds and settings included.  
- **Built-in Java** → No install required. 
- **Lightweight** → Under 50MB compressed.  
- **Simple** → One `.bat` file to launch the game.  

## Requirements
- OS: Windows XP (Service Pack 3)
- At least **500MB free space**  
- At least **512MB RAM**

## Setup Guide
1. Go to the [UsbMC GitHub repo](https://github.com/AndresBDW/UsbMC).  
2. Click **Code → Download ZIP**.  
3. Extract it anywhere.  
4. Run **UsbMC.bat**.  
5. Enter a nickname pressing "**2**".  
6. Launch Minecraft pressing "**1**".

## Usage
- To play again, just re-run **UsbMC.bat** and press "**1**".  
- Your **worlds, resource packs, and settings** are stored in the `data\.minecraft` folder.
 
## Project Structure
```
UsbMC/
├── UsbMC.bat                      # Launch Minecraft
├── data\.minecraft                # Saves, resource packs, settings, etc.
├── data\runtime\bin               # Java runtime
├── data\runtime\binopengl         # Java runtime with OpenGL Mesa
└── data\runtime\lib               # Java libreries
```

## Notes
- This is **not** an official Minecraft launcher.  
- If you enjoy Minecraft, please support **Mojang/Microsoft** by owning a copy.
- Performance may vary depending on your system.
- Inspired in [NanoMC](https://github.com/skidsploiter/NanoMC)
