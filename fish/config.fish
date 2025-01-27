function fish_greeting
    # pfetch
    # python3 ~/projects/eztodo/taskprint.py ~/projects/eztodo/tasks.json
    
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

alias ta='python3 ~/projects/eztodo/taskadd.py ~/projects/eztodo/tasks.json'
alias tp='python3 ~/projects/eztodo/taskprint.py ~/projects/eztodo/tasks.json'
alias td='python3 ~/projects/eztodo/taskremove.py ~/projects/eztodo/tasks.json'
alias update-download='yay -Syuw --noconfirm --removemake --sudoloop --useask'
alias update='yay -Syu --noconfirm --removemake --sudoloop --useask'
alias pls='sudo'
alias nsfw='nitrogen --set-zoom-fill $(ls ~/.config/wallpapers/weeb_shit/*.* | sort -R | head -n 1)'
if test -f /home/sawntoe/.autojump/share/autojump/autojump.fish; . /home/sawntoe/.autojump/share/autojump/autojump.fish; end
fish_add_path /home/sawntoe/.local/bin
fish_add_path /home/sawntoe/.local/share/gem/ruby/3.0.0/bin
fish_add_path /home/sawntoe/go/bin
fish_add_path /home/sawntoe/.cargo/bin/
set -gx EDITOR nvim
set -gx TERM xterm-256color
starship init fish | source
# steamguard completion --shell fish | source
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/sawntoe/.ghcup/bin # ghcup-env

set -gx PYTHONIOENCODING utf8
source ~/.config/fish/ssh_agent.fish

ssh-add -q ~/.ssh/id_rsa 2>&1 >/dev/null
source ~/.config/fish/gcloud.fish
