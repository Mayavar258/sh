if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mayavar258/sh.git /sh
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /app
fi
cd /sh
pip3 install -U -r requirements.txt
echo "starting"
python3 bot.py
