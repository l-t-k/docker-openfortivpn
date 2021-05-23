# docker-openfortivpn
```
docker run -d --name vpn \
	--privileged \
	-p "3390:3390" \
	-e 'VPN_RDPIP=ip' \
	-e 'VPN_HOST=host' \
	-e 'VPN_CERT=cert' \
	-e 'VPN_USER=user' \
	-e 'VPN_PASS=pass' \
	-e 'VPN_OTP=otp' \
	docker-openfortivpn
```
