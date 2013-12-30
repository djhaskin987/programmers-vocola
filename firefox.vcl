visit <_anything> = {Esc}":open $1";
close tab = {Esc}d;
open tab <_anything> = {Esc}":tabopen $1";
follow <_anything> = {Esc} f $1;
follow tab <_anything> = {Esc} F $1;
next doc = {Esc} J;
previous doc = {Esc} K;

back = {Esc} H ;

# Voice commands for firefox

