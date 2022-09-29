#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/ryz-store/permission/main/ipmini | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
exit 0
fi
clear
echo -e "\e[1;32m═══════════════════════════════════════\e[m"
echo -e "          \e[1;31m\e[1;31m═[\e[mIP Manager | SSH SEDANG NETWORK\e[1;31m]═\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e[m"
echo -e " 1\e[1;33m)\e[m  Add IP VPS"
echo -e " 2\e[1;33m)\e[m  Delete IP VPS"
echo -e " 3\e[1;33m)\e[m  Backup [CLOSE]"
echo -e " 4\e[1;33m)\e[m  Restore [CLOSE]"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m"
echo -e " Klik Enter Untuk Keluar Menu"
echo -e "\e[1;32m══════════════════════════════════════════\e[m" 
echo -e ""
read -p "     Please Input Number  [ 1-4 ] :  "  v2ray
echo -e ""
case $v2ray in
1)
addip
;;
2)
delip
;;
x)
menu
;;
*)
echo -e "Sampai Jumpa Lagi"
;;
esac
