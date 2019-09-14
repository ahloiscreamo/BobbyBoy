# No greeting when starting an interactive shell.
function fish_greeting
end

#NNN
export NNN_OPENER="xdg-open"
export NNN_OPENER_DETACH=1
export NNN_USE_EDITOR=1
export EDITOR="nvim"
export NNN_EDITOR="/usr/bin/nvim"
export NNN_VISUAL="nvim"
export NNN_CONTEXT_COLORS="13"

#WAL
#cat ~/.cache/wal/sequences

#Kunst
# The size of the album art to be displayed
export KUNST_SIZE="200x200"

# Where your music is located
export KUNST_MUSIC_DIR="/mnt/1b5e6c70-f3fa-4e88-a91e-d5d00e69ad54/Music/"

#nnn pager
export PAGER=less
export LESSOPEN="|/usr/bin/lesspipe.sh %s"
export LESS='-Ri '

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
