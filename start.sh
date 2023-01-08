if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SohanRazz/Auto-Filter-V5-s /Auto-Filter-V5-s
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V5-s
fi
cd /Auto-Filter-V5-s
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
