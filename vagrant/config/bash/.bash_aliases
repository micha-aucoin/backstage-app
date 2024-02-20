alias ssha='eval $(ssh-agent -s) && ssh-add ~/.ssh/backstage-vagrant'

alias dps='docker ps --format "table {{.Image}}\t{{.Names}}\t{{.Ports}}"'

alias k="kubectl"
alias kns="kubectl ns"
alias kctx="kubectl ctx"