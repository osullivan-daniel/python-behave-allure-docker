# Helpful coloured terminal
source ~/.bash_git
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w$(__git_ps1 "\[\033[01;36m\](%s)") \$\[\033[00m\] '

# Alias's
alias ll="ls -la"

# linuxbrew
eval "$(/home/keyserSoze/.linuxbrew/bin/brew shellenv)"

# python libs
export PATH="$PATH:/home/keyserSoze/.local/bin"