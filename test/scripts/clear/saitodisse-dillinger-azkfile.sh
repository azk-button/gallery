
echo " - cleaning saitodisse/dillinger#azkfile"

echo "   $ cd /tmp/buttons/dillinger folder"
cd /tmp/buttons/dillinger

echo "   $ azk stop"
azk stop

echo " - removing any persistent/sync folders..."
azk info | grep -e "\(sync_folders\|persistent_folders\)" | awk -F ":" "{ print $2 }" | sed "s/.*\(persistent_folders\|sync_folders\)\/\(\w\+\).*/\2/g" | tail -n 1 | xargs -n 1 -I VARR sudo rm -rf ~/.azk/data/sync_folders/VARR ~/.azk/data/persistent_folders/VARR
echo " - removing old project folder if exists..."
cd /tmp/buttons
sudo rm -rf /tmp/buttons/dillinger
