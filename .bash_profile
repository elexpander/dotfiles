
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;


# Add tab completion for many Bash commands
#if which brew > /dev/null && [ -f $(brew --prefix)/etc/bash_completion ]; then
#    source $(brew --prefix)/etc/bash_completion
#elif [ -f ~/shell_scripts/bash_completion ]; then
#	source ~/shell_scripts/bash_completion;
#fi;
# ssh host autocomplete
_complete_hosts () {
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  host_list=`
    cat ~/.ssh/known_hosts | cut -f1 -d' ' | sed -e s/,.*//g | grep -v ^# | uniq | grep -v "\[" ;
    cat ~/.ssh/config | grep "^Host " | awk '{print $2}' | grep -v "*"
  `
  COMPREPLY=( $(compgen -W "${host_list}" -- $cur))
  return 0
}
complete -F _complete_hosts ssh


# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;
