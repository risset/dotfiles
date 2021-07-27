# Remove all files in cwd except arg
rmexcept()
{
    find . -maxdepth 1 ! -name $1 -type f -exec rm {} +
}

# Show the number of files deeper than the given dir
numfiles() 
{
    find $1 -mindepth 1 -type f | wc -l
}

# Make a bootable USB drive from a Linux ISO
mkdrive()
{
    if [[ $# -ne 2  ]]; then
	echo 'mkdrive <path/to/iso> <disk>' 
    else
	doas dd if=$1 of=$2 bs=4M status=progress oflag=sync
    fi
}

# Upload file to ix.io pastebin service and copy URL to clipboard
pb()
{
    cat $1 |& curl -F 'f:1=<-' ix.io | xclip -sel clip
}


# Add torrent to transmission-daemon
tmr-add()
{
    transmission-remote --add "$1"
}

# cd to directory via fzf (anywhere on filesystem via mlocate)
cf()
{
  local file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n $file ]]; then
     if [[ -d $file ]]; then
        cd -- $file
     else
        cd -- ${file:h}
     fi
  fi
}

# cd to directory via fzf
fzfd()
{
    local dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m)
    cd "$dir"
}

# Change origin of git repository
git-change-origin()
{
    git remote rm origin
    git remote add origin $1
    git config master.remote origin
    git config master.merge refs/heads/master
}

# Clone remote git repo from clipboard to local directory and cd to it
xclone() {
    local dir=~/git
    local url=$(xclip -selection clipboard -out)
    local repo=$(basename $url)
    local dest=$dir/$repo
    git clone $url $dest
    cd $dest
}

# List aws instances
aws-list-instances()
{
    local filters="Name=instance-type,Values=t2.micro"
    local query="Reservations[].Instances[].InstanceId"
    aws ec2 describe-instances --filters $filters --query $query
}
