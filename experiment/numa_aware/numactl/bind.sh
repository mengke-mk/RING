#!/bin/bash
PPN=2
numactl --cpunodebind=$(( $PMI_ID % $PPN )) --membind=$(( $PMI_ID % PPN )) "$@"
