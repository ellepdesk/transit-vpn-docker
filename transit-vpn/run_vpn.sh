#/bin/bash

echo "setting up NAT"
iptables -t nat -A POSTROUTING -j MASQUERADE

echo "Starting vpn clients"

cd /etc/openvpn

for f in *.conf; do 
    echo "$f: starting"
    openvpn $f  | sed -e "s/^/$f: /;" &
done
wait

echo "All clients stopped"
