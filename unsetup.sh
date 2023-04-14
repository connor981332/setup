LS_FILE=~/Documents/ls
OLD_RC=~/.zshrc-old
if [ -f "$LS_FILE" ]; then
    rm ~/Documents/ls
else 
    echo "It does not look like you were ever set up in the first place"
fi
if [ -f "$OLD_RC" ]; then
    rm ~/.zshrc
    mv ~/.zshrc-old ~/.zshrc
fi
