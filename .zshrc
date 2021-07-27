# Load initial environment
source $HOME/.profile

# Load configuration files
if [ -z ${ZSH_CONFIG+x} ]; then
    echo "ZSH_CONFIG not set."
    exit;
else;
    for f in $(find $ZSH_CONFIG/)
    do
	source $f
    done;
fi;
