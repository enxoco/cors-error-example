#!/bin/bash

# This script will run a python server and a node server in the background.
# Exiting out of this script will close both background processes.
# https://stackoverflow.com/questions/360201/how-do-i-kill-background-processes-jobs-when-my-shell-script-exits
trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT

python -m http.server 3000 --directory frontend/ & PIDA=$!
node backend/index.js & PIDB=$!

# https://unix.stackexchange.com/questions/162645/is-it-possible-to-run-two-commands-at-the-same-time-in-a-shell-script
wait $PIDA
wait $PIDB
