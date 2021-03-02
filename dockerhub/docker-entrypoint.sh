#!/bin/sh

set -e
# set -ex

## if command start with an option, directory or a file, prepend `norminette`
# if [ -f "$1" -o -d "$1" -o "$(expr substr "$1" 1 1)" = '-' ]; then

# if first arg is not a command, it's either an option, file/dir or a mispelled word.
# thus prepend `norminette` command
if [ ! $(command -v "$1" &> /dev/null) ]; then
	set -- norminette "$@"
fi

exec "$@"
