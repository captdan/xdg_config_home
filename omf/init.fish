#Library Home Dirs
set -x ANDROID_HOME /usr/local/opt/android-sdk
set -x JAVA_HOME /Library/Java/Home

#PATHs
set -x PATH $HOME/.local/bin $PATH

for conf in $CONFIG_PATHS
  source $conf
end
