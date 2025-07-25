unset HISTFILE

alias ls='ls -aG'
alias ll='ls -alG'

PROMPT='%F{51}%n%f%b %~ %% '

# Smarter completion initialization
# https://scottspence.com/posts/speeding-up-my-zsh-shell
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go
export PATH="$HOME/go/bin:$PATH"

# deno
. "/Users/bracynj/.deno/env"

# bun completions
[ -s "/Users/bracynj/.bun/_bun" ] && source "/Users/bracynj/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

fastfetch
