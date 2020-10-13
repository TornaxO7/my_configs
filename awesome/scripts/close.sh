#!/usr/bin/env bash

redshift -x
killall redshift
killall picom

# quit awesomewm
echo 'awesome.quit()' | awesome-client
