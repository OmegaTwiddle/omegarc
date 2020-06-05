#!/bin/bash

cp $HOME/.bashrc $HOME/.bashrc.bkp

if [ $(grep '.omegarc' $HOME/.bashrc | wc -l) == "0" ]; then
		# Install the omegarc into the bashrc file.
		
		>>$HOME/.bashrc cat <<EOF

# Source the omegarc file.

if [ -f $HOME/.omegarc ]; then 
    . $HOME/.omegarc
fi

EOF
fi

cp ./dot_omegarc.sh $HOME/.omegarc

. $HOME/.bashrc

echo "Run the following command for the new changes to take effect:
    source $HOME/.bashrc "

