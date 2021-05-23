# docker-openfortivpn
```
docker run -d --name vpn \
	--device=/dev/ppp \
	--cap-add=NET_ADMIN \
	-p "3390:3390" \
	-e 'VPN_RDPIP=ip' \
	-e 'VPN_HOST=host' \
	-e 'VPN_CERT=cert' \
	-e 'VPN_USER=user' \
	-e 'VPN_PASS=pass' \
	-e 'VPN_OTP=otp' \
	ltka/openfortivpn
```
