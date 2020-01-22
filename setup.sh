#!/bin/bash

echo ""
echo "#############################################"
echo "Install never-false utilitys"
echo "#############################################"
apk add nano vim

echo ""
echo "#############################################"
echo "Install apache2"
echo "#############################################"
apk add apache2

echo ""
echo "#############################################"
echo "Install git related utilitys"
echo "#############################################"
apk add openssh openssh-keygen git

echo ""
echo "#############################################"
echo "Configure and start apache"
echo "#############################################"
cp -rf httpd.conf /etc/apache2/
httpd

echo ""
echo "#############################################"
echo "Generate ssh-key for git"
echo "#############################################"
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -N ""

echo ""
echo "#############################################"
echo "Done! Your Webserver should be up and running!"
echo "#############################################"
echo "You can now access the webserver on http://127.0.0.1:8000"
echo ""
echo "Next steps:"
echo "- copy your public key from below to your git server"

echo ""
echo "Public key starts below"
echo "#############################################"
cat ~/.ssh/id_ed25519.pub
