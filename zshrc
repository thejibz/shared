plugins=(ssh-agent docker docker-compose git zsh-syntax-highlighting history-substring-search)

alias dc="docker-compose"
alias dti="docker exec -ti "
alias dcr='function _dcr(){ docker-compose stop $1; docker-compose rm -f $1; docker-compose build $1; docker-compose up -d $1 };_dcr'
alias dip="docker_ip $1"
alias dockerkillall='docker ps -q | xargs docker kill'
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker ps -a -q | xargs docker rm'
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker images -q -f dangling=true | xargs docker rmi'
alias dockercleanv='printf "\n>>> Deleting dangling volumes\n\n" && docker volume ls -q -f dangling=true | xargs docker volume rm'
alias dclean='dockercleanc || true && dockercleanv || true && dockercleani'
