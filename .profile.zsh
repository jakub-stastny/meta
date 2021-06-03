load ~/.zsh/environments/helpers.zsh && save-function-list
load ~/.zsh/environments/basic.zsh

# Custom functions, aliases and hooks.
typeset -T -U -gx -a BLACKLIST blacklist ' '

blist-add()        { blacklist+=("$@") }
blist-prepend()    { blacklist=("$@" $blacklist) }
blist-del()        { for i ("$@") { blacklist[(r)$i]=() } }
blist-clear()      { blacklist=() }

in-first-tab && git pull --rebase --autostash &> /dev/null
in-first-tab && git install-hooks &> /dev/null

report-custom-functions
