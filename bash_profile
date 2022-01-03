#export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#android home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

#fastline
# export PATH="$HOME/.fastlane/bin:$PATH"

#flutter
export PATH=/Users/origami/.flutter/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# export nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


##
# Your previous /Users/origami/.bash_profile file was backed up as /Users/origami/.bash_profile.macports-saved_2019-01-25_at_12:47:42
##

# MacPorts Installer addition on 2019-01-25_at_12:47:42: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#set custom gcc
#alias gcc='gcc-10'
#alias cc="gcc-10" 
#alias g++="g++-10"
#alias c++="c++-10"

#export CC=/usr/local/bin/gcc
#export CXX=/usr/local/bin/g++
#export CPP=/usr/local/bin/cpp
#export LD=/usr/local/bin/gcc
#alias c++=/usr/local/bin/c++
#alias g++=/usr/local/bin/g++
#alias gcc=/usr/local/bin/gcc
#alias cpp=/usr/local/bin/cpp
#alias ld=/usr/local/bin/gcc
#alias cc=/usr/local/bin/gcc

#use apple gcc
#export CC=/usr/bin/gcc
#export CXX=/usr/bin/g++
#export CPP=/usr/bin/cpp
#export LD=/usr/bin/ld
#alias c++=/usr/bin/c++
#alias g++=/usr/bin/g++
#alias gcc=/usr/bin/gcc
#alias cpp=/usr/bin/cpp
#alias cc=/usr/bin/gcc
#alias ld=/usr/bin/ld


# nvim
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
export EDITOR=nvim

# remove username
DEFAULT_USER=$USER
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/origami/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/origami/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/origami/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/origami/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

. "$HOME/.cargo/env"
