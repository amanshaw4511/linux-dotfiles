#!/usr/bin/bash

# this file update the dotfile to git repo

echo "[+] updating bashrc .."
if [ -e $HOME/.mybashrc ]
then 
    cp $HOME/.mybashrc ./bash/mybashrc
    echo "done."
else
    echo "file not found"
fi

echo "[+] updating nvim file .."
if [ -e $HOME/.config/nvim ]
then
    cp -r $HOME/.config/nvim ./nvim
    echo "done"
else
    echo "file not found"
fi

echo "[+] updating i3wm files .."
if [ -e $HOME/.config/i3  ]
then
    cp -r $HOME/.config/i3 ./i3wm
    echo "done"
else
    echo "file not found"
fi 



