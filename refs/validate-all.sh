
echo "Testing YANG syntax..."
pyang --ietf --max-line-length=70 -p ../ ../ietf-netconf-client\@*.yang
pyang --ietf --max-line-length=70 -p ../ ../ietf-netconf-server\@*.yang

exit

echo "Testing keychain module..."
./validate.sh ietf-system-keychain\@*.yang ex-system-keychain.xml
#./validate.sh ietf-system-keychain\@*.yang ex-system-keychain-rpc-gpk-restconf-json.xml
#./validate.sh ietf-system-keychain\@*.yang ex-system-keychain-rpc-gcsr-netconf.xml

echo "Testing ssh-server module..."
./validate.sh ietf-ssh-server\@*.yang ex-ssh-server.xml

echo "Testing tls-server module..."
./validate.sh ietf-tls-server\@*.yang ex-tls-server.xml

echo "Testing netconf-server module..."
./validate.sh ietf-netconf-server\@*.yang ex-netconf-server.xml

echo "Testing restconf-server module..."
./validate.sh ietf-restconf-server\@*.yang ex-restconf-server.xml


