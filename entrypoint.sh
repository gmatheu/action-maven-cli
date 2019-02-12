#!/bin/bash -l

source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "==========Starting Maven Commands=========="

sh -c "mvn $*"

echo "==========Finished Maven Commands=========="
