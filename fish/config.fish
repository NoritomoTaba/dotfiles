# 気が向いたらまたつけよう
#
# hello fish-shell
#function fish_greeting
#  fortune | cowsay -f ghostbusters --aurora --bold
#end

# lang
set -x LANG en_US.UTF-8

# alias
## regular commands
alias ls='ls -aG -F'
alias rm='rm -i'
alias ..='cd ..'

## git
alias gis='git status'
alias gif='git diff'
alias gil='git log --oneline'
alias gitch='git switch'
alias todaycommits='git today | pbcopy'

## nvim
alias vi='nvim'
alias vim='nvim'

## configuration
alias vimconf='vi ~/ghq/github.com/cat2koban/dotfiles/nvim/init.vim'
alias fishconf='vi ~/ghq/github.com/cat2koban/dotfiles/fish/config.fish'
alias tmconf='vi ~/ghq/github.com/cat2koban/dotfiles/tmux/.tmux.conf'

## dotfiles
alias dot='cd ~/ghq/github.com/cat2koban/dotfiles/'

## ghq
alias get='ghq get -p'

## others
alias reload='exec $SHELL'

## tmux
alias t='tmux'

# for Development rails app
alias be='bundle exec'
alias bers='be rspec'
alias berc='be rubocop'
alias berca='be rubocop -a'

# fish-ghq / fzf
set -g GHQ_SELECTOR_OPTS "--no-sort --reverse --ansi --color bg+:13,hl:3,pointer:7"

# direnv
eval (direnv hook fish)

# editor
set -x EDITOR nvim

# GPG Key
set -x GPG_TTY (tty)

# Go
set -x GOENV_ROOT "$HOME/.goenv"
set -x PATH "$GOENV_ROOT/bin:$PATH"
set -x GOENV_DISABLE_GOPATH 1
goenv init - | source
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# bin
set -x PATH ~/bin/ $PATH

set -g pure_symbol_prompt (set_color green)'('(set_color red)'๑'(set_color white)' °口°'(set_color red)'๑'(set_color green)')' (set_color white)'{ '
set -g pure_color_git_branch magenta

## gh cli
eval (gh completion -s fish| source)
