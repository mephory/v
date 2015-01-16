#!/bin/sh

# We use some temporary files to store the keystrokes to be applied to the input
# and to store the output.
VUUID=$(uuidgen)
VSCRIPTFILE="/tmp/$VUUID-script"
VOUTPUTFILE="/tmp/$VUUID"

# The keystrokes that are to be applied to the input are given as the
# parameters to our script.
# So we take them ($@), and add <esc>:wq $VOUTPUTFILE to them to exit any mode
# we're currently in and write the file to our temporary output file.
# We save those keystrokes in $VSCRIPTFILE.
echo "$@:wq $VOUTPUTFILE" > $VSCRIPTFILE

# Then, we `cat` the stdin to this script and pipe it to vim. With the -s flag,
# we tell vim to execute the keystrokes we saved in our $VSCRIPTFILE.
# We redirect stdout and stderr to /dev/null to supress vim's "Reading from
# stdin" message.
cat | vim - -s $VSCRIPTFILE 2>/dev/null 1>/dev/null

# Now we just print back the $VOUTPUTFILE and remove our two temporary files.
cat $VOUTPUTFILE
rm $VSCRIPTFILE
rm $VOUTPUTFILE
