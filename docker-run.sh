docker stop ipsec-vpn-server &&
docker rm ipsec-vpn-server &&
docker run \
    --name ipsec-vpn-server \
    --env-file ./.env \
    --restart=always \
    -p 500:500/udp \
    -p 4500:4500/udp \
    -v /lib/modules:/lib/modules:ro \
    -d --privileged \
    hwdsl2/ipsec-vpn-server
