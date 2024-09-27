echo "Installing certificate $1 into Netscaler"
nscli -U 127.0.0.1:acme-user:acme-user 'add ssl certkey '$1' -cert '$1'.crt -key '$1'.key'
nscli -U 127.0.0.1:acme-user:acme-user 'update ssl certkey '$1
