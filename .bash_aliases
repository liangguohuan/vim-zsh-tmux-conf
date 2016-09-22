#!/bin/bash 

# => lead bug: these codes will echo ascii when command exec finish in zsh
# ------------ but zsh work well in tmux.          
# export TERM="screen-256color"
export TERM="xterm-256color"

# => ctrl + s will be trigger vim dead, so do this.
# => vim-multiple-cursors must do this for doing well.
stty ixany
stty ixoff -ixon

eval `dircolors /usr/src/dircolors/dircolors-solarized/dircolors.256dark`

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval $(thefuck --alias)

export DEV_ENV=local
export VAGRANT_HOME=~/.vagrant.d
export APP_HOME=/usr/share/applications
export ICONS_HOME=/usr/share/icons
export CHROME_BIN=/usr/bin/google-chrome
export MIMEPATH=~/.local/share/applications/mimeapps.list
export SANDBOX_BINARY=/home/hanson/mysql
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_05
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export NODE_PATH=/usr/local/lib/node_modules
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/py/
export ZOOKEEPER_HOME=/opt/zookeeper
export STORM_HOME=/opt/storm
export MONGODB_HOME=/opt/mongodb
export LAMPP_HOME=/opt/lampp
export COMPOSER_PATH=/home/hanson/.composer/vendor/bin
export PATH=$PATH:$JAVA_HOME/bin:$STORM_HOME/bin:$ZOOKEEPER_HOME/bin:$LAMPP_HOME/bin:$MONGODB_HOME/bin:$COMPOSER_PATH:.
export PATH=$PATH:/home/hanson/CodeHub/SHELL
export PHP_EXTENSION_PATH=/opt/lampp/lib/php/extensions/no-debug-non-zts-20131226
export DOCSWEB="/media/d/技术资料/docs-web"

export LANGUAGE=en_US.UTF-8 git vi vim gvim

alias grep='grep --color'
alias ls='ls --color=auto'
alias llu="ls -tlrh"
alias llf="ls \$1 | fullpath"
alias fullpath="xargs -n 1 readlink -f"
alias cls="clear"
alias mcf="vim ~/.bash_aliases"
alias mcfn="source ~/.bash_aliases && echo alias files has been updated."
alias mcfv="cat ~/.bash_aliases | egrep '(alias [a-z|\-]{3,}=\")|(export )' | less"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias updateall="sudo apt-get update && sudo apt-get upgrade"
alias aptsearch="sudo aptitude search"
alias aptshow="sudo aptitude show"
alias aptinstall="sudo apt-get install"
alias aptremove="sudo aptitude purge"
alias aptclear="sudo apt-get autoremove"
alias aptautofix="sudo apt-get -f install"
alias cdc="cd /media/c"
alias cdd="cd /media/d"
alias cdw="cd /home/hanson/Code"
alias cdl="cd /media/d/技术资料/最近文档"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias testnet="ping 163.com"
alias vm="ssh hanson@127.0.0.1 -p 2222"
alias hadoop="ssh root@127.0.0.1 -p 2222"
alias ubuntu-docker="ssh root@127.0.0.1 -p 60000"
alias szip="smartzip"
alias disk="df -lTh"
alias psaux="ps aux | grep"
# alias portshow="sudo netstat -anp | grep tcp"
alias zhuxiao="gnome-session-quit --logout --no-prompt"
alias mysql="mysql -uroot -p"
alias mysqlconf="sudo vim /opt/lampp/etc/my.cnf"
alias showmaster="mysql -uroot --password='' -e 'show master status;'"
alias redisconf="cat /etc/redis.conf | grep -v ^# | grep -v ^$"
alias uvn="uname -r | awk -F '-' '{print \$1\"-\"\$2}'"
alias neihe-old="sudo dpkg --get-selections|grep linux|egrep linux-\(headers\|image\)-\([0-9.-]+\|extra\)|grep -v `uvn`|awk '{print \$1}'"
alias hostconf="sudo vi /etc/hosts"
alias hostview="less /etc/hosts"
alias icons="nautilus ~/.local/share/icons/"
alias desktop-top="nautilus ~/.local/share/applications/"
alias uuids="sudo blkid"
alias gateway="route -n"
alias dl="docker ps -l -q"
alias dls="docker ps -a"
alias dis="docker images"
alias dcc-bash="docker ps -a | grep /bin/bash | awk '{print \$1}' | xargs docker rm -f"
alias phpconf="sudo vi + /opt/lampp/etc/php.ini"
alias decrypt="encrypt -d"
alias decryptfile="encryptfile -d"
alias dush="du -sh"
alias autoeng="sudo vi +$ /usr/share/fcitx/data/AutoEng.dat"
alias proxy="export HTTP_PROXY=127.0.0.1:8087 && export HTTPS_PROXY=127.0.0.1:8087 && echo 'use goagent proxy sucessed.'"
alias proxydisable="export HTTP_PROXY= && export HTTPS_PROXY= && echo 'cancel proxy sucessed.'"
alias cdjekyll="cd /media/d/jekyll/dark.github.io/"
alias sjekyll="cdjekyll && jekyll s && cd - && cls"
alias zshconf="vi ~/.zshrc"
alias zshconfnow="source ~/.zshrc"
# => google-chrome apps custom start
alias gqq="google-chrome --app='http://web.qq.com' &>/dev/null"
alias gnote="google-chrome --app='http://www.maxiang.info' &>/dev/null"
alias gmusic="google-chrome --app='http://music.163.com/#/my/m/music/playlist?id=37040212' &>/dev/null"
# setting width and height for app.
# alias gbaidu="google-chrome --user-data-dir=/tmp/163 --window-size=1000,600 --window-position=380,240 --app="http://www.baidu.com/" &>/dev/null &"
# => google-chrome apps custom ending
# close notebook screen via command, and recover it via keyboard <Fn+F4>
alias closescreen="xrandr --output LVDS1 --off"
alias networkrestart="sudo ifdown eth0 && sudo ifup eth0"
alias h="homestead"
alias a="artisan"
alias dk="docker"
alias dkc="docker-compose"
alias laradock="docker-compose up -d nginx mysql redis"
alias vmdock="docker-compose exec workspace bash"
alias docweb="start-stop-daemon --start --background --name=docweb --exec /home/hanson/CodeHub/PYTHON/Default/local-host-bind.py \
           && sleep 1 \
           && xdg-open http://localhost:8888/index/docs-html/ &>/dev/null"
alias cscope-update="find . -name '*.php' -type f > cscope.files && cscope -bq"
# copy file contens to clipboard: sfc [filename]
alias sfc="xsel -b < "
alias copyfiletoclip=sfc
alias trl="trash-list"
alias trp="trash-put"
alias trr="trash-recover"
alias gdriver="skicka"
alias baiduyun="pcs"
alias randomchars="python -c \"import random,string;print ''.join(random.sample(string.ascii_letters+string.digits, 16)).lower()\""
alias temphostname="sudo hostname android-obylyw02ziobm8fr"
alias china-weather-restart="psaux indicator-china-weather | grep -v color | awk '{print \$2}' | xargs kill -9 && start-stop-daemon --exec /usr/bin/indicator-china-weather --start --background"
