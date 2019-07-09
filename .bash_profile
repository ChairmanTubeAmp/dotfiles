#!/bin/bash

# Load .bashrc and other files...
for file in ~/.{bashrc,bash_prompt,aliases,functions,path,dockerfunc,extra,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Maximum number of history lines in memory
export HISTSIZE=50000
# Maximum number of history lines on disk
export HISTFILESIZE=50000
# When the shell exits, append to the history file
# instead of overwriting it
shopt -s histappend
