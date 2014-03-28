export PYTHONSTARTUP=~/.pythonstartup.py

function proxify {
    export HTTP_PROXY="<your_proxy>"
    export HTTPS_PROXY="<your_proxy>"
    export FTP_PROXY="<your_proxy>"
    export all_proxy="<your_proxy>"
    export ftp_proxy="<your_proxy>"
    export http_proxy="<your_proxy>"
    export https_proxy="<your_proxy>"
    export no_proxy="<local stuff>"
}

function unproxify {
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset FTP_PROXY
    unset all_proxy
    unset ftp_proxy
    unset http_proxy
    unset https_proxy
    unset no_proxy
}

function kill-by-name {
   ps aux | grep $1 | grep -v grep | awk '{print $2}' | sudo xargs kill -9
}
