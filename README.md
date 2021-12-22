# shellc
command is ```shellc [-r] -f script [-o exename]```

use this repo to install ```shellc```

installation command is ```DIR=$(pwd) && cd /usr/bin && if [ ! -f git ]; then cd /bin && if [ ! -f git ]; then sudo apt install git fi fi && cd $DIR && sudo git clone https://github.com/WinparWinpar/shellc.git -o ./shellc && sudo ./shellc-install $DIR && export PATH=$PATH:$DIR```
