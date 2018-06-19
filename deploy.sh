#!/bin/bash

set -ex

# mv relevant files to home folder
mv .xinitrc ~/.xinitrc
mv .spacemacs ~/.spacemacs
mv .bash_profile ~/.bash_profile
mv .latexmkrc ~/.latexmkrc


# remove script/self
rm *.sh
