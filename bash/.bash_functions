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

function base64uuid () {
  curl -fLs https://gist.githubusercontent.com/hfreire/3de863d28fb7020cfa19ce8eca77f7f4/raw/7fd54dc5ea1104a6fb145f606d3c67f42b7eec71/base64uuid.java -o /tmp/base64uuid.java && \
  echo "73a6ac7d0355163e29f430dfcb3e58185a9a33bf32ed43d659ab25b70dbc93c2 */tmp/base64uuid.java" | shasum -a 256 -s -c - && \
  javac -d /tmp/ /tmp/base64uuid.java && \
  java -cp /tmp/ base64uuid $1 $2; \
  rm -f /tmp/base64uuid.java /tmp/base64uuid.class
}

function agr {
  ag -0 -l "$1" | AGR_FROM="$1" AGR_TO="$2" xargs -0 perl -pi -e 's/$ENV{AGR_FROM}/$ENV{AGR_TO}/g';
}
