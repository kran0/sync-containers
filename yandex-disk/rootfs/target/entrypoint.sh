#!/bin/bash

DISK_EXE='/usr/bin/yandex-disk'
[ "${1}" '==' "--help" ] && exec ${DISK_EXE} ${@}

# fill CONFIG file if there is no CONFIG file and CONFIG_CONTENTS is not empty
#[ ! -f "${CONFIG}" ] && [ ! -z "${CONFIG_CONTENTS}" ] && echo "${CONFIG_CONTENTS}" > "${CONFIG}"
# TODO: disabled, CONFIG is not working so, ^M (\r\n) line delimiters are needed

# set env to defaults if needed
AUTH="${AUTH:-/tmp/yandex-disk.passwd}"
DIR="${DIR:-/opt/share}"

# set options
ARGS='--no-daemon' # always launch no-daemon
#[ -z "${CONFIG}" ]       || ARGS="${ARGS} --config=\"${CONFIG}\""
[ -z "${PROXY}" ]        || ARGS="${ARGS} --proxy=\"${PROXY}\""
[ -z "${DIR}" ]          || ARGS="${ARGS} --dir=\"${DIR}\""
[ -z "${AUTH}" ]         || ARGS="${ARGS} --auth=\"${AUTH}\""
[ -z "${EXCLUDE_DIRS}" ] || ARGS="${ARGS} --exclude-dirs=\"${EXCLUDE_DIRS}\""
[ "${READ_ONLY}" '==' "true" ] && ARGS="${ARGS} --read-only"
[ "${OVERWRITE}" '==' "true" ] && ARGS="${ARGS} --overwrite"

# check if TOKEN command could be run
[ ! -z "${USERNAME}" ] && ${DISK_EXE} token $([ -z "${PASSWORD}" ] || echo "--password=\"${PASSWORD}\"") "${USERNAME}" "${AUTH}"
unset AUTH USERNAME PASSWORD # no trust

exec ${DISK_EXE} ${ARGS} ${@}
