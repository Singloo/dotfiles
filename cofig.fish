set fish_greeting "Welcome."

egrep "^export " ~/.bash_profile | while read e
  set var (echo $e | sed -E "s/^export ([A-Za-z_]+)=(.*)\$/\1/")
  set value (echo $e | sed -E "s/^export ([A-Za-z_]+)=(.*)\$/\2/")

 # remove surrounding quotes if existing
  set value (echo $value | sed -E "s/^\"(.*)\"\$/\1/")

  if test $var = "PATH"
  # replace ":" by spaces. this is how PATH looks for Fish
   set value (echo $value | sed -E "s/:/ /g")

  # use eval because we need to expand the value
  eval set -xg $var $value

  continue
 end

 # evaluate variables. we can use eval because we most likely just used "$var"
 set value (eval echo $value)

 #echo "set -xg '$var' '$value' (via '$e')"
 set -xg $var $value
end

# setup conda
# source (conda info --root)/etc/fish/conf.d/conda.fish
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/origami/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -U fish_user_paths ~/opt/miniconda3/bin $fish_user_paths

# set -U fish_user_paths $HOME/.yarn/bin

# set -U fish_user_paths $HOME/.config/yarn/global/node_modules/.bin


# install fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# setup prompt
function fish_prompt
      # set_color purple
      # date "+%m/%d/%y"
      set_color FF0
      echo (pwd) "~> "
      # set_color normal
end

# nvm
bass source ~/.nvm/nvm.sh --no-use ';' nvm use default

function nvm
           bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end


set PATH $HOME/.cargo/bin $PATH

# gcc
alias gcc='gcc-10'
alias cc="gcc-10"
alias g++="g++-10"
alias c++="c++-10"
