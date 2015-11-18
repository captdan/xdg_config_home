#PATHs
set -x PATH $HOME/.local/bin $PATH

for conf in $CONFIG_PATHS
  source $conf
end
