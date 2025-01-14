# Some environments still use `docker-compose` even for Docker Compose v2.
dc_base="$(docker compose version &> /dev/null && echo 'docker compose' || echo 'docker-compose')"
if [[ "$(basename $0)" = "install.sh"  ]]; then
  dc="$dc_base --ansi never --env-file ${_ENV}"
else
  dc="$dc_base --ansi never"
fi
dcr="$dc run --rm"
