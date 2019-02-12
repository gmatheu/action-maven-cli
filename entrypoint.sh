#!/bin/bash -l

source "${SDKMAN_DIR}/bin/sdkman-init.sh"

echo "==========Starting Maven Commands=========="

sh -c "mvn $*"

echo "==========Finished Maven Commands=========="
