#!/bin/bash
set -e
ls
WF_DIR='./.github/workflows'
WF_TYPE=$1
[[ ! -e ${WF_DIR} ]] && mkdir -p ${WF_DIR}
cd ${WF_DIR}
curl https://github.com/SineQuaNon/workfows/$WF_TYPE.yml > $WF_TYPE.yml.tmp
DIFF_RET=$(diff -q $WF_TYPE.yml $WF_TYPE.yml.tmp)
if [[ ${DIFF_RET} -ne 0]]
then
    mv -f ${WF_TYPE}.yml.tmp ${WF_TYPE}.yml
else
    rm -f ${WF_TYPE}.yml.tmp
fi
return $DIFF_RET


