#!/bin/sh


# Dynamic set frps.ini based on PORT
cd /frps
cat <<-EOF > /frps/frps.ini
[common]
bind_port = $PORT
token = 12345678
dashboard_user = admin
dashboard_pwd = admin
vhost_http_port = 10080
vhost_https_port = 10443
EOF

echo "Running FRP Server :D"
echo "Binding on the port $PORT"
/frps/frps -c /frps/frps.ini
