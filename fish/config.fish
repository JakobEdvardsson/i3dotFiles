if status is-interactive
    # Commands to run in interactive sessions can go here


    starship init fish | source
    set -U fish_greeting
    cat ~/.cache/wal/sequences
    source /usr/share/autojump/autojump.fish
end
