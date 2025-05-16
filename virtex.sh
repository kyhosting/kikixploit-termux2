cat > virtex.sh << EOF
#!/bin/bash
for i in {1..1000}; do
   echo -n "â‚¿â‚ºâ‚©â‚¢â‚¤â‚¬â‚§â‚±" >> virtex.txt
done
echo "Virtex dibuat: virtex.txt"
EOF
chmod +x virtex.sh
