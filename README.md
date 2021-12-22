# shellc
command is <code>shellc [-r] -f script [-o exename]</code>

use this repo to install <code>shellc</code>

# installation
installation command:
```
DIR=$(pwd) && cd /usr/bin && if [ ! -f git ]; then cd /bin && if [ ! -f git ]; then sudo apt install git fi fi && cd $DIR && sudo git clone https://github.com/WinparWinpar/shellc.git -o ./shellc && sudo ./shellc-install $DIR && export PATH=$PATH:$DIR && alias shellc='bash shellc.sh' && echo Installation Complete!!!
```
