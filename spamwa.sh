cat > spamwa.sh << EOF
#!/bin/bash
read -p "Nomor WA target (628xxx): " nomer
for i in {1..50}; do
   termux-open-url "https://api.whatsapp.com/send?phone=\$nomer&text=SPAM+\$i"
   sleep 1
done
EOF
chmod +x spamwa.sh
