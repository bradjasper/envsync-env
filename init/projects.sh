# Make a project active by switching it into the python path, making the active django project and
# jumping to its directory
make_active() {

    PROJ_DIR=$PROJECTS_DIR/$1
    if [ -d "$PROJ_DIR" ]; then
        export ACTIVE_PROJECT=$1
        export ACTIVE_PROJECT_DIR=$PROJ_DIR
        export DJANGO_SETTINGS_MODULE=$1.settings
        unshift_pythonpath $ACTIVE_PROJECT_DIR
        cd $ACTIVE_PROJECT_DIR
    else
        echo "No project exists $PROJ_DIR"
    fi
}

# Project shortcuts
alias marcn="make_active 'rentacarnow'"
alias mahc="make_active 'hostingchoice'"
alias mainst="make_active 'instockdomains'"
alias mabj="make_active 'bradjasper'"
alias maic="make_active 'icpug'"
alias mabm="make_active 'blogmarket'"
alias masp="make_active 'spyder'"
alias maseo="make_active 'seosmarter'"
alias maco="make_active 'common'"
