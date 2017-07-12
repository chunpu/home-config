# need ~/.bashrc

# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

# basic alias
# test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias lh='ll -h'
alias lf='ls -alF'
alias l='ls -CF'

alias mkdir='mkdir -pv'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias wget='wget --no-check-certificate'

# docker alias

#Get latest container ID
alias dl='docker ps -l -q'

# Get container process
alias dps='docker ps'

# Get process included stop container
alias dpa='docker ps -a'

# Get images
alias di='docker images'

# Get container IP
alias dip='docker inspect --format '{{ .NetworkSettings.IPAddress }}''

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd='docker run -d -P'

# Run interactive container, e.g., $dki base /bin/bash
alias dki='docker run -i -t -P'

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
