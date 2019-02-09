systemctl stop CampusCoin.service
clear

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd /usr/local/bin/
wget https://github.com/campuscoindev/CC/releases/download/3.0.2/cc_linux.zip
sudo rm ccd cc-cli cc-tx
sudo unzip cc_linux.zip
sudo rm cc-qt
sudo rm -R ~/.cc/backups/
sudo rm -R ~/.cc/blocks/
sudo rm -R ~/.cc/chainstate/
sudo rm -R ~/.cc/database/
sudo rm ~/.cc/budget.dat ~/.cc/db.log ~/.cc/debug.log ~/.cc/fee_estimates.dat ~/.cc/mncache.dat ~/.cc/mnpayments.dat ~/.cc/peers.dat
sudo rm cc_linux.zip
systemctl start CampusCoin.service
echo "Masternode restarted"
