# sudo ufw enable
# sudo ufw allow 22
# sudo ufw allow 80
# sudo ufw allow 443
cat /var/log/ufw.log | grep "SRC=" | awk '{print $12}' | grep "SRC=" | grep "\:" | sed 's/SRC=//' | sort -u > dropped-ipv6.txt
# cat dropped-ipv6.txt
