# v

v allows you to use manipulate texts by applying vim keystrokes to them

## Installation

    git clone git@github.com/mephory/v.git
    cp v/v /usr/bin/

## Usage

    v [-s] keystrokes

The `-s` flag tells `v` to apply the keystrokes only once.
By default, the keystrokes will be applied once per line.

## Examples

Replace the first word of every line in ./text with "hello"

    cat ./text | v 'cwhello'

Add an exclamation mark to the end of the first line in ./text

    cat ./text | v -s 'A!'


## Todo

* Commands like 'o' don't behave correctly when used without the -s flag
