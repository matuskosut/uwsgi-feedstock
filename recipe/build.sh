export UWSGI_PROFILE="${RECIPE_DIR}/uwsgi_config.ini"
export UWSGI_INCLUDES="${PREFIX}/include,${PREFIX}/include/openssl"
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"

UWSGI_EMBED_PLUGINS=stats_pusher_statsd ${PYTHON} -m pip install . --no-deps -vv
