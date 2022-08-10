#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

source ~/.alias

PS1="\[\e[33m\] \w \[\e[m\]\[\e[1;32m\]$ \[\e[m\]"
#PS1="\e[33m \w \e[m\e[32m$ \e[m\]"

#wal -R
#clear
#set -o vi


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

if [ -e /home/zgft/.nix-profile/etc/profile.d/nix.sh ]; then . /home/zgft/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels
