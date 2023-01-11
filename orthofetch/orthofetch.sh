#! /bin/bash

# Define the logo filenames
LOGO_NAMES=('ICXC' 'SlavCross' 'MHTSU')
LOGO_COLORS=('13 8 2' '13 4 8 5' '3 13 4 12 5 11')

# Derive a random LOGO_NAME and associated colors
SIZE=${#LOGO_NAMES[@]}
INDEX=$(($RANDOM % $SIZE))
LOGO_NAME=${LOGO_NAMES[$INDEX]}
LOGO_COLOR=${LOGO_COLORS[$INDEX]}

# Print the neofetch logo
echo "neofetch --ascii_colors $LOGO_COLOR --ascii $XDG_CONFIG_HOME/orthofetch/logos/$LOGO_NAME" | sh
