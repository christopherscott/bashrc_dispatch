PREFIX=$HOME/bashrc_dispatch/

# load utility scripts
[ -f "$HOME/.rvm/scripts/rvm" ] && . ~/.rvm/scripts/rvm
[ -f "${PREFIX}colors.sh" ] && . "${PREFIX}colors.sh"
[ -f "${PREFIX}git-completion.sh" ] && . "${PREFIX}git-completion.sh"
[ -f "${PREFIX}reactive-prompt.sh" ] && . "${PREFIX}reactive-prompt.sh"

# token
shell_is_linux && export TOKEN="${COLOR_CYAN}λ${COLOR_NONE}"
shell_is_osx && export TOKEN="${COLOR_GREEN}☯${COLOR_NONE} "

# high-speed prompt
export PS1='$(show_time) $(prompt_color)'"${COLOR_GRAY}[${COLOR_NONE}"'$(prompt_color)'"\u${COLOR_NONE}${COLOR_GRAY}@${COLOR_NONE}"'$(prompt_color)'"\h${COLOR_NONE}${COLOR_GRAY}]${COLOR_NONE}"\
" ${COLOR_GRAY}\w${COLOR_NONE}"\
"${COLOR_BROWN}"'$(show_git_branch_and_status)'"${COLOR_NONE}\n"\
"\[\033[1;35m\]"'$(show_exit_status)'"${TOKEN} "

shell_is_linux && alias l="ls -gGh --color"
shell_is_osx && alias l="ls -ohgG"

alias ll="ls -AgnhG"
alias resource="source ~/.profile"
alias dev="cd ~/dev"
alias wf="ssh cscott@cscott.webfactional.com"

# mobile emulators
alias android="~/dev/zoo/lib/android-sdk-macosx/tools/emulator -avd ics-stock"
alias ios="/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app/Contents/MacOS/iPhone\ Simulator"

# hide/show hidden files in Finder
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles TRUE; killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles FALSE; killall Finder"

# Ack: http://betterthangrep.com/
alias ack="ack --ignore-dir=min-cat"

alias localhost="cd /Library/WebServer/Documents"
alias webroot="localhost"