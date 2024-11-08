netscaler_deploy() {

  _cdomain="$1"
  _ckey="$2"
  _ccert="$3"
  _cca="$4"
  _cfullchain="$5"

echo "Installing certificate $1 into Netscaler"
$1
nscli -U 127.0.0.1:acme-user:acme-user 'add ssl certkey '$_cdomain' -cert '$_ccert' -key '$_ckey
nscli -U 127.0.0.1:acme-user:acme-user 'update ssl certkey ' $_cdomain
}
