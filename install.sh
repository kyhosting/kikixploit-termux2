#!/bin/bash
echo "Menginstall Tools Ganas by KikiXploit..."
sleep 1

mkdir -p $HOME/KikiXploit-Ganas
cd $HOME/KikiXploit-Ganas

base="https://raw.githubusercontent.com/kyhosting/kikixploit-termux2/main"

curl -O $base/KikiXploit.sh
curl -O $base/ddos.sh
curl -O $base/deface.sh
curl -O $base/autodeface.sh
curl -O $base/spamwa.sh
curl -O $base/virtex.sh
curl -O $base/hplag.sh
curl -O $base/resanmore.sh

chmod +x *.sh

echo "Selesai! Jalankan dengan: bash \$HOME/KikiXploit-Ganas/KikiXploit.sh"
