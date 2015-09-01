# SYNOPSIS
#   dircolors [options]
#
# USAGE
#   Options
#

function init -a path --on-event init_dircolors
  function dircolors -a dircolor_file -d 'Set dir colors using gdircolors'
    set -x LS_COLORS (gdircolors $dircolor_file)
  end

  if test -f $XDG_CONFIG_HOME/dir.colors
    dircolors $XDG_CONFIG_HOME/dir.colors
  else if test -f $HOME/.dir.colors
    dircolors $HOME/.dir.colors
  end
end
