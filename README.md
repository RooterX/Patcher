<img width="1874" height="367" alt="ascii-art-text" src="https://github.com/user-attachments/assets/01e69aa2-7595-47cd-9bff-709961558f14" />

A simple Bash script to keep your Linux system up to date — updates repositories, upgrades packages, removes bloat, cleans cache, and checks
internet connectivity. Logs everything automatically. 
 Features 
Full system update via apt
Automatic removal of unused packages
Cache cleanup
Internet connectivity check (ping + IP info)
Timestamped log saved to ~/Downloads/synch_logs/ 

Requirements:
- Debian-based Linux (Ubuntu, Mint, Pop!_OS, etc.)
- Sudo access
- Curl installed 
- Installation 
- git clone https://github.com/RooterX/Patcher.git
- cd synch-patcher
- chmod +x patcher.sh

Usage:
- `./patcher.sh`

Logs are saved to: ~/Downloads/synch_logs/patcher_YYYYMMDD_HHMMSS.log 
License 
MIT — see LICENSE
