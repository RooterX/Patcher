#!/bin/bash
echo "starting patcher..."
sleep 2
echo "WELCOME TO SYNCH PATCHER"

LOG_DIR="$HOME/Downloads/synch_logs"
LOG_FILE="$LOG_DIR/patcher_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$LOG_DIR"

log() {
    echo "$1" | tee -a "$LOG_FILE"
}

cat << 'EOF'

 /$$$$$$  /$$     /$$ /$$   /$$  /$$$$$$  /$$   /$$       /$$$$$$$   /$$$$$$  /$$$$$$$$ /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$ 
| $$__  $$|  $$   /$$/| $$$ | $$ /$$__  $$| $$  | $$      | $$__  $$ /$$__  $$|__  $$__//$$__  $$| $$  | $$| $$_____/| $$__  $$
| $$  \__/ \  $$ /$$/ | $$$$| $$| $$  \__/| $$  | $$      | $$  \ $$| $$  \ $$   | $$  | $$  \__/| $$  | $$| $$      | $$  \ $$
|  $$$$$$   \  $$$$/  | $$ $$ $$| $$      | $$$$$$$$      | $$$$$$$/| $$$$$$$$   | $$  | $$      | $$$$$$$$| $$$$$   | $$$$$$$/
 \____  $$   \  $$/   | $$  $$$$| $$      | $$__  $$      | $$____/ | $$__  $$   | $$  | $$      | $$__  $$| $$__/   | $$__  $$
 /$$  \ $$    | $$    | $$\  $$$| $$    $$| $$  | $$      | $$      | $$  | $$   | $$  | $$    $$| $$  | $$| $$      | $$  \ $$
|  $$$$$$/    | $$    | $$ \  $$|  $$$$$$/| $$  | $$      | $$      | $$  | $$   | $$  |  $$$$$$/| $$  | $$| $$$$$$$$| $$  | $$
 \______/     |__/    |__/  \__/ \______/ |__/  |__/      |__/      |__/  |__/   |__/   \______/ |__/  |__/|________/|__/  |__/

EOF

log "====================================================="
log "SYNCH PATCHER - $(date '+%d/%m/%Y %H:%M:%S')"
log "====================================================="
log ""

log "[1/4] Checking for updates..."
sudo apt update

log "[2/4] Updating System..."
sudo apt upgrade -y

log "[3/4] Removing bloatware..."
sudo apt autoremove -y

log "[4/4] Cleaning cache..."
sudo apt clean

log "Checking internet..."
ip a
ping -c 4 8.8.8.8
hostname -I
curl ifconfig.me

if [ $? -eq 0 ]; then
    log "Internet OK"
else
    log "ERROR: Internet Connection Failed"
    exit 1
fi

log ""
log "GOTCHA! Check new log: $LOG_FILE"
