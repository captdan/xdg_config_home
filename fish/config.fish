set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CACHE_HOME $HOME/.cache

#Library Home Dirs
set -x ANDROID_HOME /usr/local/opt/android-sdk
set -x GEM_HOME $XDG_DATA_HOME/gem
set -x GEM_SPEC_CACHE $XDG_CACHE_HOME/gem
set -x GIT_SSH_COMMAND "ssh -F $XDG_CONFIG_HOME/ssh/config $argv 2>/dev/null"
set -x GRADLE_USER_HOME $XDG_CACHE_HOME/gradle
set -x JAVA_HOME /Library/Java/Home
set -x PYENV_ROOT $XDG_DATA_HOME/pyenv
set -x RBENV_ROOT $XDG_DATA_HOME/rbenv
set -x SUP_BASE $XDG_CONFIG_HOME/sup
set -x VIMINIT "source $XDG_CONFIG_HOME/vim/vimrc"
set -x XAUTHORITY $XDG_CACHE_HOME/Xauthority

#PATH
set -x PATH $PATH $GEM_HOME/bin

#Config Dirs
set -x HTTPIE_CONFIG_DIR $XDG_CONFIG_HOME/httpie
set -x LESSHISTFILE $XDG_DATA_HOME/less/lesshst
set -x SUBVERSION_HOME $XDG_CONFIG_HOME/subversion

if test -f $XDG_CONFIG_HOME/fish/private_config.fish
  source $XDG_CONFIG_HOME/fish/private_config.fish
end

if test -f $XDG_CONFIG_HOME/fish/work_config.fish
  source $XDG_CONFIG_HOME/fish/work_config.fish
end

dircolors $XDG_CONFIG_HOME/dircolors

if test -f $XDG_CONFIG_HOME/iterm2/iterm2_shell_integration.fish
  source $XDG_CONFIG_HOME/iterm2/iterm2_shell_integration.fish
end
