# When a "login shell" starts up, it reads the file "/etc/profile" and then "~/.bash_profile"
# or "~/.bash_login" or "~/.profile" (whichever one exists - it only reads one of these, checking for them in the order mentioned).

# the default umask is set in /etc/login.defs
#umask 022

# include .profile if it exists
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
