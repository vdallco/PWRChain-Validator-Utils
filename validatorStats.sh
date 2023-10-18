#!/bin/bash

validatorAddress=$(awk '/My address/ && !printed {print $NF; printed=1}' validator.log)

echo "Validator wallet address: $validatorAddress"

validatorStarted=$(sed -E 's/\x1B\[[0-9;]*[mGK]//g' validator.log | awk -F '[][]' '/Loaded wallet/ {print $2}')

startedISO=$(date -d "@$validatorStarted" '+%Y-%m-%d %H:%M:%S')

echo "Validator started $startedISO UTC"
