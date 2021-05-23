FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
  expect \
  wget \
  net-tools \
  iproute2 \
  ipppd \
  iptables \
  ssh \
  curl \
  iputils-ping \
  openfortivpn && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /root

COPY start.sh /start.sh
RUN chmod u+x /start.sh

CMD [ "/start.sh" ]
