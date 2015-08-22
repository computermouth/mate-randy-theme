#!/bin/bash

RANDR=$(printf "%02x" $(($RANDOM % 156 + 100)))
RANDG=$(printf "%02x" $(($RANDOM % 156 + 100)))
RANDB=$(printf "%02x" $(($RANDOM % 156 + 100)))

gsettings set org.mate.background secondary-color "'#"$RANDR$RANDR$RANDG$RANDG$RANDB$RANDB"'"
gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ foreground-color "'#"$RANDR$RANDR$RANDG$RANDG$RANDB$RANDB"'"

BEG=$(gsettings get org.mate.interface gtk-color-scheme)
DONE=$(echo "$BEG" | sed 's|selected_bg_color:#.*'\n'|selected_bg_color:#'$RANDR$RANDR$RANDG$RANDG$RANDB$RANDB'\\n|')
gsettings set org.mate.interface gtk-color-scheme $DONE
