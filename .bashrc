IP=`ip addr show dev enp0s3| grep "inet " | cut -d" " -f6 | sed -r 's/(.+).{3}/\1/'`

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@'$IP'\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@'$IP'\w\$'
fi

