cd /src/hh-radverkehr
REPO=git@github.com:ADFC-Hamburg/hh-radverkehr-updater.git

if [ ! -d .git ] ; then
    git clone $REPO .
fi
while : ; do
    echo run
    git pull origin main
    sleep 3600 # sleep 1h
done
