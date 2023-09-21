alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias zshrc="vim ~/.zshrc"
alias ws="webstorm"
alias npmlg="npm ls -g --depth=0"
alias lsof8000="lsof -t -i tcp:8000"
alias tree1="tree -I "node_modules" -dL 1"
alias tree2="tree -I "node_modules" -dL 2"
alias tree3="tree -I "node_modules" -dL 3"

# ------------------------------------
# Docker aliases
# ------------------------------------
alias d="docker"
alias dco="docker-compose"

# Get the latest container ID
alias dl="docker ps --latest --quiet"

# List containers
alias dps="docker ps"

# List containers including stopped containers
alias dpa="docker ps --all"

# List images
alias di="docker images"

# List images including intermediates
alias dia="docker images --all"

# Tree images including intermediates
alias dit="docker images --tree"

# Get an IPaddress of a container
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run a daemonized container
alias drd="docker run --detach --publish-all"

# Run an interactive container
alias dri="docker run --interactive --tty --publish-all"

# Remove all containers
alias drm='docker rm $(docker ps --all --quiet)'

# Remove all images
alias drmi='docker rmi $(docker images --quiet)'

# Remove all containers and images by force
alias dclean='docker kill $(docker ps --all --quiet); drm; drmi;'

# List all aliases relating to docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)='\(.*\)'/\1    => \2/"| sed "s/'\\\'//g"; }