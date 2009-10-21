#!/bin/bash

# Displayed when you login

USERNAME=`whoami`
WELCOME_MSG="Unknown"

case $ENVSYNC_OS in
    mac)
        WELCOME_MSG="Mac OSX"
        ;;

    linux)
        WELCOME_MSG="Linux"
        ;;
esac

echo
echo "==========================================================="
echo "  Welcome $USERNAME to $WELCOME_MSG @$MACHTYPE"
echo "==========================================================="
echo
