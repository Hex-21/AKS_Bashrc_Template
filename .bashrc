# bashrc aliases for managing multiple Arma game instances via systemd
# paths are placeholders
# Review commands before using with "hex"(u know why)

alias log='cat path_to_config_folder/command.log'

restart1() {
  sudo -v || return 1
  echo "Restarting Server 1"
  (
    echo "$(date) [INFO] Restarting Server 1"
    sudo -n systemctl restart AKS1.service
    echo "$(date) [INFO] Restart Server 1"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

stop1() {
  sudo -v || return 1
  echo "Stopping Server 1"
  (
    echo "$(date) [INFO] Stopping Server 1"
    sudo -n systemctl stop AKS1.service
    echo "$(date) [INFO] Stop Server 1"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

session1() {
  sudo -v || return 1
  echo "Resetting session and restarting Server 1"
  (
    echo "$(date) [INFO] Stopping Server 1 for session reset"
    sudo -n systemctl stop AKS1.service
    echo "$(date) [INFO] Stop Server 1"
    sudo -n rm -rf path_to_config_folder/AKS1/profile/.save/game/*
    echo "$(date) [INFO] Deleted save files"
    sleep 1
    sudo -n systemctl start AKS1.service
    echo "$(date) [INFO] Start Server 1"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

addon1() {
  sudo -v || return 1
  echo "Deleting addons in background and restarting Server 1"
  (
    echo "$(date) [INFO] Deleting Addons"
    sudo -n rm -rf path_to_config_folder/AKS1/addons/*
    sudo -n systemctl restart AKS1.service
    echo "$(date) [INFO] Addons Deleted"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

alias status1='sudo systemctl status AKS1.service --no-pager --lines=15'
alias json1='cp path_to_config_folder/AKS1/config.json path_to_config_folder/AKS1/Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias log1='sudo journalctl -u arma-reforger-1.service -f'


restart2() {
  sudo -v || return 1
  echo "Restarting Server 2"
  (
    echo "$(date) [INFO] Restarting Server 2"
    sudo -n systemctl restart AKS2.service
    echo "$(date) [INFO] Restart Server 2"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

stop2() {
  sudo -v || return 1
  echo "Stopping Server 2"
  (
    echo "$(date) [INFO] Stopping Server 2"
    sudo -n systemctl stop AKS2.service
    echo "$(date) [INFO] Stop Server 2"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

session2() {
  sudo -v || return 1
  echo "Resetting session and restarting Server 2"
  (
    echo "$(date) [INFO] Stopping Server 2 for session reset"
    sudo -n systemctl stop AKS2.service
    echo "$(date) [INFO] Stop Server 2"
    sudo -n rm -rf path_to_config_folder/AKS2/profile/.save/game/*
    echo "$(date) [INFO] Deleted save files"
    sleep 1
    sudo -n systemctl start AKS2.service
    echo "$(date) [INFO] Start Server 2"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

addon2() {
  sudo -v || return 1
  echo "Deleting addons in background and restarting Server 2"
  (
    echo "$(date) [INFO] Deleting Addons"
    sudo -n rm -rf path_to_config_folder/AKS2/addons/*
    sudo -n systemctl restart AKS2.service
    echo "$(date) [INFO] Addons Deleted"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

alias status2='sudo systemctl status AKS2.service --no-pager --lines=15'
alias json2='cp path_to_config_folder/AKS2/config.json path_to_config_folder/AKS2/Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias log2='sudo journalctl -u arma-reforger-2.service -f'


restart3() {
  sudo -v || return 1
  echo "Restarting Server 3"
  (
    echo "$(date) [INFO] Restarting Server 3"
    sudo -n systemctl restart AKS3.service
    echo "$(date) [INFO] Restart Server 3"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

stop3() {
  sudo -v || return 1
  echo "Stopping Server 3"
  (
    echo "$(date) [INFO] Stopping Server 3"
    sudo -n systemctl stop AKS3.service
    echo "$(date) [INFO] Stop Server 3"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

session3() {
  sudo -v || return 1
  echo "Resetting session and restarting Server 3"
  (
    echo "$(date) [INFO] Stopping Server 3 for session reset"
    sudo -n systemctl stop AKS3.service
    echo "$(date) [INFO] Stop Server 3"
    sudo -n rm -rf path_to_config_folder/AKS3/profile/.save/game/*
    echo "$(date) [INFO] Deleted save files"
    sleep 1
    sudo -n systemctl start AKS3.service
    echo "$(date) [INFO] Start Server 3"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

addon3() {
  sudo -v || return 1
  echo "Deleting addons in background and restarting Server 3"
  (
    echo "$(date) [INFO] Deleting Addons"
    sudo -n rm -rf path_to_config_folder/AKS3/addons/*
    sudo -n systemctl restart AKS3.service
    echo "$(date) [INFO] Addons Deleted"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

alias status3='sudo systemctl status AKS3.service --no-pager --lines=15'
alias json3='cp path_to_config_folder/AKS3/config.json path_to_config_folder/AKS3/Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias log3='sudo journalctl -u arma-reforger-3.service -f'


restart4() {
  sudo -v || return 1
  echo "Restarting Server 4"
  (
    echo "$(date) [INFO] Restarting Server 4"
    sudo -n systemctl restart AKS4.service
    echo "$(date) [INFO] Restart Server 4"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

stop4() {
  sudo -v || return 1
  echo "Stopping Server 4"
  (
    echo "$(date) [INFO] Stopping Server 4"
    sudo -n systemctl stop AKS4.service
    echo "$(date) [INFO] Stop Server 4"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

session4() {
  sudo -v || return 1
  echo "Resetting session and restarting Server 4"
  (
    echo "$(date) [INFO] Stopping Server 4 for session reset"
    sudo -n systemctl stop AKS4.service
    echo "$(date) [INFO] Stop Server 4"
    sudo -n rm -rf path_to_config_folder/AKS4/profile/.save/game/*
    echo "$(date) [INFO] Deleted save files"
    sleep 1
    sudo -n systemctl start AKS4.service
    echo "$(date) [INFO] Start Server 4"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

addon4() {
  sudo -v || return 1
  echo "Deleting addons in background and restarting Server 4"
  (
    echo "$(date) [INFO] Deleting Addons"
    sudo -n rm -rf path_to_config_folder/AKS4/addons/*
    sudo -n systemctl restart AKS4.service
    echo "$(date) [INFO] Addons Deleted"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

alias status4='sudo systemctl status AKS4.service --no-pager --lines=15'
alias json4='cp path_to_config_folder/AKS4/config.json path_to_config_folder/AKS4/Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias log4='sudo journalctl -u arma-reforger-4.service -f'


restart5() {
  sudo -v || return 1
  echo "Restarting Server 5"
  (
    echo "$(date) [INFO] Restarting Server 5"
    sudo -n systemctl restart AKS5.service
    echo "$(date) [INFO] Restart Server 5"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

stop5() {
  sudo -v || return 1
  echo "Stopping Server 5"
  (
    echo "$(date) [INFO] Stopping Server 5"
    sudo -n systemctl stop AKS5.service
    echo "$(date) [INFO] Stop Server 5"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

session5() {
  sudo -v || return 1
  echo "Resetting session and restarting Server 5"
  (
    echo "$(date) [INFO] Stopping Server 5 for session reset"
    sudo -n systemctl stop AKS5.service
    echo "$(date) [INFO] Stop Server 5"
    sudo -n rm -rf path_to_config_folder/AKS5/profile/.save/game/*
    echo "$(date) [INFO] Deleted save files"
    sleep 1
    sudo -n systemctl start AKS5.service
    echo "$(date) [INFO] Start Server 5"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

addon5() {
  sudo -v || return 1
  echo "Deleting addons in background and restarting Server 5"
  (
    echo "$(date) [INFO] Deleting Addons"
    sudo -n rm -rf path_to_config_folder/AKS5/addons/*
    sudo -n systemctl restart AKS5.service
    echo "$(date) [INFO] Addons Deleted"
  ) >> "path_to_config_folder/command.log" 2>&1 &
}

alias status5='sudo systemctl status AKS5.service --no-pager --lines=15'
alias json5='cp path_to_config_folder/AKS5/config.json path_to_config_folder/AKS5/Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias log5='sudo journalctl -u arma-reforger-5.service -f'


function hex() {
  GREEN="\e[32m"
  RED="\e[31m"
  YELLOW="\e[33m"
  NC="\e[0m"
  BLUE="\e[34m"

  echo -e "\nLittle Help:"
  echo -e " Infoblatt der Befehle, lediglich am Ende des Befehls die richtige Zahl eingeben"
  echo -e " 1 = AKS1, 2 = AKS2, 3 = AKS3, 4 = AKS4, 5 = AKS5"

  echo -e "  ${GREEN}restart1${NC}    ${RED}→${NC} ${YELLOW}Server Neustart${NC}"
  echo -e "  ${GREEN}stop1${NC}       ${RED}→${NC} ${YELLOW}Server Stop${NC}"
  echo -e "  ${GREEN}status1${NC}     ${RED}→${NC} ${YELLOW}Server Status${NC}"
  echo -e "  ${GREEN}log1${NC}        ${RED}→${NC} ${YELLOW}Server Logs (bis STRG+C)${NC}"
  echo -e "  ${GREEN}addon1${NC}      ${RED}→${NC} ${YELLOW}Server Addons löschen${NC}"
  echo -e "  ${GREEN}session1${NC}    ${RED}→${NC} ${YELLOW}Server Saves löschen${NC}"
}

