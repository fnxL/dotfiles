#!/usr/bin/bash

swww_fork=~/.local/bin/swww

$swww_fork query || $swww_fork init
$swww_fork img $1 --transition-fps 240 --transition-type grow --transition-pos 0.854,0.977 --transition-duration 2
