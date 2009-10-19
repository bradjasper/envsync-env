# Various system wide utilities

ffpy() { sudo find . -name \*.py 2> /dev/null | xargs grep "$1" | tr -d "\t"; }
ffphp() { sudo find . -name \*.php 2> /dev/null | xargs grep "$1" | tr -d "\t"; }
ff() { sudo find . 2> /dev/null | xargs grep "$1" | tr -d "\t"; }
super_kill() { kill -9 `ps -ef|grep "$1"|grep -v grep|awk '{print $2}'`; }
