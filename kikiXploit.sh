cat > KikiXploit.sh << EOF
#!/bin/bash
clear
termux-vibrate -d 200
echo -e "\e[1;34m
██╗  ██╗██╗██╗  ██╗██╗  ██╗██╗  ██╗██████╗ ██╗     ██╗████████╗
██║ ██╔╝██║╚██╗██╔╝██║  ██║██║  ██║██╔══██╗██║     ██║╚══██╔══╝
█████╔╝ ██║ ╚███╔╝ ███████║███████║██████╔╝██║     ██║   ██║   
██╔═██╗ ██║ ██╔██╗ ██╔══██║██╔══██║██╔═══╝ ██║     ██║   ██║   
██║  ██╗██║██╔╝ ██╗██║  ██║██║  ██║██║     ███████╗██║   ██║   
╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝   ╚═╝\e[0m"

echo -e "\n\e[1;33m[ MENU GANAS - KikiXploit ]\e[0m"
echo -e "1. DDoS Attack"
echo -e "2. Deface Website (Manual)"
echo -e "3. Auto Deface Website"
echo -e "4. Spam WhatsApp"
echo -e "5. Virtex WA"
echo -e "6. HP Lag (Heavy Loop)"
echo -e "7. Stuck Resanmore"
echo -e "0. Exit\n"
read -p "Pilih nomor: " pil

case \$pil in
1) bash ddos.sh ;;
2) bash deface.sh ;;
3) bash autodeface.sh ;;
4) bash spamwa.sh ;;
5) bash virtex.sh ;;
6) bash hplag.sh ;;
7) bash resanmore.sh ;;
0) exit ;;
*) echo "Pilihan salah!" ;;
esac
EOF

chmod +x KikiXploit.sh
