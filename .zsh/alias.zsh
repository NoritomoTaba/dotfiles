alias rm='rm -i'
alias ls='ls -aG -F'
alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'

# cd
alias dot='cd $HOME/workspace/dotfiles'
alias work='cd $HOME/workspace'

# git
alias gis='git status'
alias gic='git commit'
alias gif='git diff'
alias gil='git log --oneline --graph'

# ghq
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# bundler
alias be='bundle exec'
alias bers='bundle exec rspec'

# rails
alias r='bin/rails'
alias s='server'
alias c='console'

# ie
alias ie='./node_modules/.bin/gulp ejs'
