# Set force_color_prompt=yes in .bashrc

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c='pygmentize -O style=monokai -f console256 -g'

venv () {
    source $1/bin/activate;
    cd $1;
}

# set bookmarks
export MARKPATH=$HOME/.marks
function jump { 
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark { 
    rm -i $MARKPATH/$1 
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

# find shorthand
function f() {
    find . -name "$1"
}

# Escape UTF-8 characters into their 3-byte format
function escape() {
  printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u)
  echo # newline
}

# Decode \x{ABCD}-style Unicode escape sequences
function unidecode() {
  perl -e "binmode(STDOUT, ':utf8'); print \"$@\""
  echo # newline
}

# Non-alias customisations

# Cycle through completion possibilities
bind '"\t":menu-complete'

# Print fancy welcome message
PATH=$PATH:~/.local/bin # Requires pip install lolcat
figlet "Hello Robin!" | lolcat

# Improve default PS1
# git clone https://github.com/brujoand/sbp.git .sbp.d
# cp ~/.sbp.d/settings.default ~/.sbp
sbp_path=~/.sbp.d
source ${sbp_path}/sbp.bash
