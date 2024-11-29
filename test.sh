#!/bin/zsh
localuser=$(scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }') 
sudo -u "$localuser" zsh <<EOF 
  ## begin of user scoped code block 
touch /home/thisisatestfile
  ## end of code block 
EOF
