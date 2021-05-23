#!/bin/bash

# setup rdp ip forwarding
iptables -t nat -A PREROUTING -p tcp --dport 3390 -j DNAT --to-destination  ${VPN_RDPIP}:3389
iptables -t nat -A POSTROUTING -j MASQUERADE

# Setup masquerade, to allow using the container as a gateway
for iface in $(ip a | grep eth | grep inet | awk '{print $2}'); do
  iptables -t nat -A POSTROUTING -s "$iface" -j MASQUERADE
done

echo "------------ VPN Starts ------------"
/usr/bin/openfortivpn ${VPN_HOST} --trusted-cert=${VPN_CERT} --username=${VPN_USER} --password=${VPN_PASS} --otp=${VPN_OTP}
