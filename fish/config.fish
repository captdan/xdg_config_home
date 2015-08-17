set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share

#Library Home Dirs
set -x ANDROID_HOME /usr/local/opt/android-sdk
set -x GEM_HOME $HOME/.gem
set -x JAVA_HOME /Library/Java/Home
set -x GRADLE_USER_HOME $XDG_DATA_HOME/gradle

#PATH
set -x PATH $PATH $GEM_HOME/bin

#Config Dirs
set -x HTTPIE_CONFIG_DIR $XDG_CONFIG_HOME/httpie
set -x LESSHISTFILE $XDG_DATA_HOME/less/lesshst

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
