# v

v allows you to use manipulate texts by applying vim keystrokes to them

## Installation

    git clone git@github.com/mephory/v.git
    cp v/v /usr/bin/

## Examples

Replace the first word in ./text with "hello"

    cat ./text | v 'cwhello'

## Todo

Make it possible to apply the keystrokes to every line of the input.
For example, to replace the first word in every line with "hello", you would do:

    cat ./text | v -l 'cwhello'
