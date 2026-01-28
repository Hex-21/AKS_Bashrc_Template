# bashrc aliases for managing multiple Arma game instances via systemd
# paths are placeholders
# Review commands before using (u know why)
# teamkills is in addition with the mod https://reforger.armaplatform.com/workshop/6572332E971992EF-ReforgerJSLogging to check teamkills

alias start1='sudo systemctl restart arma-1.service'
alias restart1='sudo systemctl restart arma-1.service'
alias reset1='sudo systemctl reset-failed arma-1.service'
alias stop1='sudo systemctl stop arma-1.service'
alias status1='sudo systemctl status arma-1.service --no-pager --lines=15'
alias enable1='sudo systemctl enable arma-1.service'
alias disable1='sudo systemctl disable arma-1.service'
alias active1='sudo systemctl is-active arma-1.service'
alias enabled1='sudo systemctl is-enabled arma-1.service'
alias log1='sudo journalctl -u arma-1.service -f'
alias error1='sudo journalctl -u arma-1.service --priority=3 -n 15'
alias json1='cp /PathToServer1/config.json /Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias addon1='sudo rm -rf /PathToServer1/addons/*'
alias session1='sudo rm -rf /PathToServer1/profile/.save/game/* && sudo systemctl restart arma-1.service'
alias launchopt1='sudo nano /etc/systemd/system/arma-1.service'
alias teamkills1='cat /PathToServer1/profile/RJS/events/playerKilledEvents.log |grep "isTeamKill = true"'


alias start2='sudo systemctl restart arma-2.service'
alias restart2='sudo systemctl restart arma-2.service'
alias reset2='sudo systemctl reset-failed arma-2.service'
alias stop2='sudo systemctl stop arma-2.service'
alias status2='sudo systemctl status arma-2.service --no-pager --lines=15'
alias enable2='sudo systemctl enable arma-2.service'
alias disable2='sudo systemctl disable arma-2.service'
alias active2='sudo systemctl is-active arma-2.service'
alias enabled2='sudo systemctl is-enabled arma-2.service'
alias log2='sudo journalctl -u arma-2.service -f'
alias error2='sudo journalctl -u arma-2.service --priority=3 -n 15'
alias json2='cp /PathToServer2/config.json /Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json' # Erstelle den Ordner Erst
alias addon2='sudo rm -rf /PathToServer2/addons/*'
alias session2='sudo rm -rf /PathToServer2/profile/.save/game/* && sudo systemctl restart arma-2.service'
alias launchopt2='sudo nano /etc/systemd/system/arma-2.service'
alias teamkills2='cat /PathToServer2/profile/RJS/events/playerKilledEvents.log |grep "isTeamKill = true"'


alias start3='sudo systemctl restart arma-3.service'
alias restart3='sudo systemctl restart arma-3.service'
alias reset3='sudo systemctl reset-failed arma-3.service'
alias stop3='sudo systemctl stop arma-3.service'
alias status3='sudo systemctl status arma-3.service --no-pager --lines=15'
alias enable3='sudo systemctl enable arma-3.service'
alias disable3='sudo systemctl disable arma-3.service'
alias active3='sudo systemctl is-active arma-3.service'
alias enabled3='sudo systemctl is-enabled arma-3.service'
alias log3='sudo journalctl -u arma-3.service -f'
alias error3='sudo journalctl -u arma-3.service --priority=3 -n 15'
alias json3='cp /PathToServer3/config.json /Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias addon3='sudo rm -rf /PathToServer3/addons/*'
alias session3='sudo rm -rf /PathToServer3/profile/.save/game/* && sudo systemctl restart arma-3.service'
alias launchopt3='sudo nano /etc/systemd/system/arma-3.service'


alias start4='sudo systemctl restart arma-4.service'
alias restart4='sudo systemctl restart arma-4.service'
alias reset4='sudo systemctl reset-failed arma-4.service'
alias stop4='sudo systemctl stop arma-4.service'
alias status4='sudo systemctl status arma-4.service --no-pager --lines=15'
alias enable4='sudo systemctl enable arma-4.service'
alias disable4='sudo systemctl disable arma-4.service'
alias active4='sudo systemctl is-active arma-4.service'
alias enabled4='sudo systemctl is-enabled arma-4.service'
alias log4='sudo journalctl -u arma-4.service -f'
alias error4='sudo journalctl -u arma-4.service --priority=3 -n 15'
alias json4='cp /PathToServer4/config.json /Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias addon4='sudo rm -rf /PathToServer4/addons/*'
alias session4='sudo rm -rf /PathToServer4/profile/.save/game/* && sudo systemctl restart arma-4.service'
alias launchopt4='sudo nano /etc/systemd/system/arma-4.service'


alias start5='sudo systemctl restart arma-5.service'
alias restart5='sudo systemctl restart arma-5.service'
alias reset5='sudo systemctl reset-failed arma-5.service'
alias stop5='sudo systemctl stop arma-5.service'
alias status5='sudo systemctl status arma-5.service --no-pager --lines=15'
alias enable5='sudo systemctl enable arma-5.service'
alias disable5='sudo systemctl disable arma-5.service'
alias active5='sudo systemctl is-active arma-5.service'
alias enabled5='sudo systemctl is-enabled arma-5.service'
alias log5='sudo journalctl -u arma-5.service -f'
alias error5='sudo journalctl -u arma-5.service --priority=3 -n 15'
alias json5='cp /PathToServer5/config.json /Backup/$(date +"%Y-%m-%d_%H-%M-%S").config.json'
alias addon5='sudo rm -rf /PathToServer5/addons/*'
alias session5='sudo rm -rf /PathToServer5/profile/.save/game/* && sudo systemctl restart arma-5.service'
alias launchopt5='sudo nano /etc/systemd/system/arma-5.service'


function hex() {
  GREEN="\e[32m"
  RED="\e[31m"
  YELLOW="\e[33m"
  NC="\e[0m"
  BLUE="\e[34m"

  echo -e "\nLittle Help:"
  echo -e " Infoblatt der Befehle, lediglich am Ende des Befehls die richtige Zahl eingeben"
  echo -e " Also ${GREEN}start1${NC} fuer ${BLUE}Server_1${NC}, ${GREEN}start2${NC} fuer ${BLUE}Server_2${NC} usw."
  echo -e " 1 = PVE1, 2 = PVE2, 3 = FF, 4 = RESERVE, 5 = TEST"

  echo -e "  ${GREEN}start1${NC}      ${RED}→${NC} ${YELLOW}Server Neustart${NC}"
  echo -e "  ${GREEN}restart1${NC}    ${RED}→${NC} ${YELLOW}Server Neustart${NC}"
  echo -e "  ${GREEN}stop1${NC}       ${RED}→${NC} ${YELLOW}Server Stop${NC}"
  echo -e "  ${GREEN}status1${NC}     ${RED}→${NC} ${YELLOW}Server Status${NC}"
  echo -e "  ${GREEN}enable1${NC}     ${RED}→${NC} ${YELLOW}Server Autostart AN${NC}"
  echo -e "  ${GREEN}disable1${NC}    ${RED}→${NC} ${YELLOW}Server Autostart AUS${NC}"
  echo -e "  ${GREEN}enabled1${NC}    ${RED}→${NC} ${YELLOW}Autostart Status anzeigen${NC}"
  echo -e "  ${GREEN}log1${NC}        ${RED}→${NC} ${YELLOW}Server Logs (bis STRG+C)${NC}"
  echo -e "  ${GREEN}error1${NC}      ${RED}→${NC} ${YELLOW}Server Errormeldungen${NC}"
  echo -e "  ${GREEN}json1${NC}       ${RED}→${NC} ${YELLOW}JSON Backup${NC}"
  echo -e "  ${GREEN}addon1${NC}      ${RED}→${NC} ${YELLOW}Server Addons löschen${NC}"
  echo -e "  ${GREEN}session1${NC}    ${RED}→${NC} ${YELLOW}Server Saves löschen${NC}"
  echo -e "  ${GREEN}launchopt1${NC}  ${RED}→${NC} ${YELLOW}Server Launchoptionen anpassen${NC}"
  echo -e "  ${GREEN}teamkills1${NC}  ${RED}→${NC} ${YELLOW}Teamkills Anzeigen(1 & 2 only)${NC}"
}
