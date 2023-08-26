function fish_greeting
    pfetch
	#cat ~/Documents/TODO
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end



# ~/.config/fish/config.fish
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
alias ls='ls --color=auto'
alias lcd='cd $1 && ls'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

# custom
alias cls='clear'
alias nv='nvim'
alias k='exit'
alias l='ls'
alias pwninit='pwninit --template-path ~/.config/pwninit/template.py'
alias :q='exit'
# alias pacman='sudo pacman'
alias xclip='xclip -selection clipboard'
alias ssh_archserver='ssh 192.168.10.100'

if test -f /home/sawntoe/.autojump/share/autojump/autojump.fish; . /home/sawntoe/.autojump/share/autojump/autojump.fish; end
set PATH $PATH:/home/sawntoe/.local/bin:/home/sawntoe/.local/share/gem/ruby/3.0.0/bin:/home/sawntoe/go/bin:/home/sawntoe/.cargo/bin/
set EDITOR nvim
set TERM xterm-256color
starship init fish | source
# steamguard completion --shell fish | source
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/sawntoe/.ghcup/bin # ghcup-env
