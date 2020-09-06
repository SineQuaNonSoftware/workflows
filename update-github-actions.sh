#!/bin/bash
WF_DIR="${PWD}/.github/workflows"
WF_TYPE=${1}
HOOK_DIR=$(dirname $0)
[[ ! -e ${WF_DIR} ]] && mkdir -p ${WF_DIR}
if [[ -e ${WF_DIR}/${WF_TYPE}.yml ]]
then
  diff -q ${HOOK_DIR}/${WF_TYPE}.yml ${WF_DIR}/${WF_TYPE}.yml
  DIFFRET=$?
else
  echo "No workflow file"
  DIFFRET=1
fi
if [[ ${DIFFRET} -ne 0 ]]
then
    cp -f ${HOOK_DIR}/${WF_TYPE}.yml ${WF_DIR}/${WF_TYPE}.yml
fi
exit ${DIFFRET}
