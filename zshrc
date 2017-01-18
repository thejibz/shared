plugins=(ssh-agent docker docker-compose git vagrant ruby perl zsh-syntax-highlighting history-substring-search)

alias dc="docker-compose"
alias dti="docker exec -ti "
alias dcr='function _dcr(){ docker-compose stop $1; docker-compose rm -f $1; docker-compose build $1; docker-compose up -d $1 };_dcr'
alias dclean="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc"