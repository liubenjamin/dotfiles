sudo pacman -S pyalpm git
git clone git://github.com/actionless/pikaur
cd pikaur
python ./pikaur.py -S pacaur
cd ..
rm -rf pikaur
