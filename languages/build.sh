#! /usr/bin/env bash

set -ue -o pipefail
trap "echo >&2 script '${BASH_SOURCE[0]}' failed" ERR

SCRIPT=`readlink -e "${BASH_SOURCE[0]}"`
SCRIPT_DIR=`dirname "$SCRIPT"`

cd "$SCRIPT_DIR"
FILE_BASE=languages
for I in {1..2}; do
	lualatex "$FILE_BASE".tex
done
rm \
	"$FILE_BASE".aux \
	"$FILE_BASE".log \
	"$FILE_BASE".out \
	#
