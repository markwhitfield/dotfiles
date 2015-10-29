# Turn on advanced bash completion if the file exists
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

## Locate virtualenvwrapper binary
#if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    #export VENVWRAP=/usr/local/bin/virtualenvwrapper.sh
#fi

gitignore() {
  cat ~/gitignore/Global/{vim,Vagrant,OSX,IPythonNotebook,Linux,Emacs,Eclipse}.gitignore ~/git/gitignore/$1.gitignore >> .gitignore
}

#if [ ! -z $VENVWRAP ]; then
    ## virtualenvwrapper -------------------------------------------
    ## make sure env directory exists; else create it
    #export WORKON_HOME=$HOME/.virtualenvs
    #export PROJECT_HOME=$HOME/Code
    #for dir in $WORKON_HOME $PROJECT_HOME; do
      #[ -d $dir ] || mkdir -p $dir
    #done
    #source $VENVWRAP

    ## virtualenv --------------------------------------------------
    #export VIRTUALENV_USE_DISTRIBUTE=true

    ## pip ---------------------------------------------------------
    #export PIP_VIRTUALENV_BASE=$WORKON_HOME
    #export PIP_RESPECT_VIRTUALENV=true
#fi

ulimit -n 2560

export XDG_DATA_HOME="$HOME/.local"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
