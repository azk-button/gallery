
echo ""
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo " Cleaning saitodisse/lets-chat#azkfile"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"

echo ""
echo "cd /tmp/buttons/lets-chat folder"
cd /tmp/buttons/lets-chat

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  $ azk stop"
echo " +++++++++++++++++++++++++++"
azk stop

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing any persistent/sync folders..."
echo " +++++++++++++++++++++++++++"
azk info | grep -e "\(sync_folders\|persistent_folders\)" | awk -F ":" "{ print $2 }" | sed "s/.*\(persistent_folders\|sync_folders\)\/\(\w\+\).*/\2/g" | tail -n 1 | xargs -n 1 -I VARR sudo rm -rf ~/.azk/data/sync_folders/VARR ~/.azk/data/persistent_folders/VARR
echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing old project folder if exists..."
echo " +++++++++++++++++++++++++++"
cd /tmp/buttons
sudo rm -rf /tmp/buttons/lets-chat