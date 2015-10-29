
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

##------------------------------------ ##
#           -- new-alias --           #
# creates new alias & writes to file  #
#          $1 = alias new             #
#          $2 = alias definition      #
##------------------------------------ ##
new-alias () { 
    if [ -z "$1" ]; then
        echo "alias name:"
        read NAME
    else
        NAME=$1
    fi

    if [ -z "$2" ]; then
        echo "alias definition:"
        read DEFINTION
    else
        if [ "$2" = "-cd" ]; then
            DEFINTION='cd '
        else
            DEFINTION=$2
        fi
    fi

    echo "alias $NAME='$DEFINTION'" >> ~/.bash_aliases
    . ~/.bash_aliases
}

cproj () {
  source activate $1 && cd ~/Code/$1
}

shopt -s globstar
export ARCHFLAGS="-arch x86_64"

# Path ------------------------------------------------------------
if [ -d /usr/local/bin ]; then
  export PATH=/usr/local/bin:$PATH
fi

# Python path -----------------------------------------------------

# Load in .bashrc -------------------------------------------------
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

export AWS_DEFAULT_REGION="us-east-1"

export PYTHONSTARTUP=$HOME/.pythonrc.py
