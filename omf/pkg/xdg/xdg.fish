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

if available gem
  set -x GEM_SPEC_CACHE $XDG_CACHE_HOME/gem
end

if available git
  set -x GIT_SSH_COMMAND "ssh -F $XDG_CONFIG_HOME/ssh/config $argv 2>/dev/null"
end

if available gradle
  set -x GRADLE_USER_HOME $XDG_CACHE_HOME/gradle
end

if available vim
  set -x VIMINIT "source $XDG_CONFIG_HOME/vim/vimrc"
end

if available sup
  set -x SUP_BASE $XDG_CONFIG_HOME/sup
end

if available notmuch
  set -x NOTMUCH_CONFIG $XDG_CONFIG_HOME/notmuch/config
end

#Config Dirs
set -x HTTPIE_CONFIG_DIR $XDG_CONFIG_HOME/httpie
set -x LESSHISTFILE $XDG_DATA_HOME/less/lesshst
set -x SUBVERSION_HOME $XDG_CONFIG_HOME/subversion
set -x XAUTHORITY $XDG_CACHE_HOME/Xauthority
