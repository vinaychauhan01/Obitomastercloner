if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/bu123bai/BANANA.git /BANANA
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BANANA
fi
cd /BANANA
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
