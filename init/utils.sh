# Various system wide utilities

gfpy() { sudo find . -name \*.py 2> /dev/null | xargs grep "$1" | tr -d "\t"; }
gfphp() { sudo find . -name \*.php 2> /dev/null | xargs grep "$1" | tr -d "\t"; }
gf() { sudo find . 2> /dev/null | xargs grep "$1" | tr -d "\t"; }
super_kill() { sudo kill -9 `ps -ef|grep "$1"|grep -v grep|awk '{print $2}'`; }
