set -x GEM_ROOT /usr/local/var/gem
set -x PYENV_ROOT /usr/local/var/pyenv
set -x RBENV_ROOT /usr/local/var/rbenv

# System
set -x XDG_DATA_DIRS /usr/share /usr/local/share
set -x XDG_CONFIG_DIRS /etc/xdg

# User
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_DESKTOP_DIR $HOME/Desktop
set -x XDG_DOWNLOAD_DIR $HOME/Downloads
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PICTURES_DIR $HOME/Pictures
set -x XDG_VIDEOS_DIR $HOME/Videos

# App
set -x GEM_SPEC_CACHE $XDG_CACHE_HOME/gem
set -x GIT_SSH "$XDG_CONFIG_HOME/ssh/gitssh"
set -x GRADLE_USER_HOME $XDG_CACHE_HOME/gradle
set -x VIMINIT "source $XDG_CONFIG_HOME/vim/vimrc"
set -x SUP_BASE $XDG_CONFIG_HOME/sup
set -x NOTMUCH_CONFIG $XDG_CONFIG_HOME/notmuch/config
set -x HTTPIE_CONFIG_DIR $XDG_CONFIG_HOME/httpie
set -x LESSHISTFILE $XDG_DATA_HOME/less/lesshst
set -x SUBVERSION_HOME $XDG_CONFIG_HOME/subversion
set -x XAUTHORITY $XDG_CACHE_HOME/Xauthority

# PATH
set -x PATH $HOME/.local/bin $PATH

#Source work functions
set fish_function_path $XDG_CONFIG_HOME/fish/functions/work $fish_function_path

source $HOME/.config/fish/work_config.fish
 set -x HOMEBREW_GITHUB_API_TOKEN 4b4b1e04542795d1f0da806d0512f78f660051b3
set -x ANDROID_HOME /usr/local/opt/android-sdk
