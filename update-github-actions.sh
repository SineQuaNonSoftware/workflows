#!/bin/bash
WF_DIR='./.github/workflows'
WF_TYPE=$1
HOOK_DIR=$(dirname $0)
[[ ! -e ${WF_DIR} ]] && mkdir -p ${WF_DIR}
diff -q ${HOOK_DIR}/${WF_TYPE}.yml ${WF_DIR}/${WF_TYPE}.yml
DIFFRET=$?
if [[ ${DIFFRET} -ne 0 ]]
then
    cp -f ${HOOK_DIR}/${WF_TYPE}.yml ${WF_DIR}/${WF_TYPE}.yml
fi
exit ${DIFFRET}