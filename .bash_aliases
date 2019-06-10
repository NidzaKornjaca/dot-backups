alias vimrc='vim ~/.vimrc'
alias gg='git graph'

function mea {
    echo 'Looking for .venv or .env...'

    if [ -d '.venv' ]; then
        source .venv/bin/activate;
    elif [ -d '.env' ]; then
        source .env/bin/activate;
    fi
}

alias pyfin='~/pyfinance/.venv/bin/python ~/pyfinance/pyfinance'
