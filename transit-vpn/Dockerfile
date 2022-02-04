FROM ubuntu:20.04
RUN apt-get update && apt-get install openvpn iptables -y --no-install-recommends && apt-get clean

WORKDIR /
COPY run_vpn.sh .
CMD ./run_vpn.sh
