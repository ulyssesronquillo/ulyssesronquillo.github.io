#!/bin/bash

##################################################
# jekyll upload to github
##################################################

main() {

    echo "-------------------------------------"
    echo "Syncing jekyll"
    echo "-------------------------------------" 

    rsync -avz --delete --exclude '.git' /home/ulysses/Code/docker/ulyme/_site/ ~/Git/ulyssesronquillo.github.io/

    sleep 5

    cd ~/Git/ulyssesronquillo.github.io/

    git status
    git add .
    git commit -am 'updated website'
    git push

}

main
