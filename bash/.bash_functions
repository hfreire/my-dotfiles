function cd () {
        command cd $1 && ls -la
}

function pingb () {
  if [[ "$1" == "" ]]; then
    exit;
  fi;

  while true;
    do ping -c1 -W2 $1 2>&1 >/dev/null;

    if [[ "$?" == "0" ]]; then
      for j in $(seq 1 4); do
        say Hey!;
        tput bel;
      done;

      ping -c1 $1;

      break;
    fi;
  done;
}
