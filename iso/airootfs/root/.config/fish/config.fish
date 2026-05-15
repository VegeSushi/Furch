# Disable welcome message
set -g fish_greeting

# Auto-start Sway on TTY1
if status is-login
    if test (tty) = /dev/tty1
        exec sway
    end
end

# Run hyfetch on interactive shell start
if status is-interactive
    hyfetch
    starship init fish | source
end