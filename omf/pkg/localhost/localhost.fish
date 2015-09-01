# SYNOPSIS
#   localhost [options]
#
# USAGE
#   Options
#

function init -a path --on-event init_localhost
  function _open-installed
    which open >/dev/null ^&1
  end

  function localhost -d "My package"
    if _open-installed
      if [ (count $argv) -lt 1 ]
          echo "You need to specify a port to open"
          return 1
      end
      command open http://localhost:$argv
    else
      echo 'Requires open (MacOS only) to be installed'
    end
  end

  for port in 3000 4000 5000 6000 7000 8000 8001 9000 8080
    eval "function $port; localhost $port; end"
  end
end
