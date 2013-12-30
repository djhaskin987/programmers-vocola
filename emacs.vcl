# Voice commands for emacs
<number> := 1..99;

up <number> times = {Ctrl+u} $1 {Ctrl+p};
down <number> times = {Ctrl+u} $1 {Ctrl+n};
left <number> times= {Ctrl+u} $1 {Ctrl+b};
right <number> times= {Ctrl+u} $1 {Ctrl+f};
left = {Ctrl+b};
right = {Ctrl+f};
up = {Ctrl+p};
down = {Ctrl+n};

word = {Alt+f};
back = {Alt+b};
word <number> times = {Ctrl+u} $1 {Alt+f};
back <number> times = {Ctrl+u} $1 {Alt+b};

open file = {Ctrl+x}{Ctrl+f};
boom = {Enter};
undo = {Ctrl+Shift+_};
die = {Alt+Backspace};
back = {Backspace};
capture = {Ctrl+w};
copy = {Alt+w};
line start = {Ctrl+a};
line end = {Ctrl+e};
start = {Alt+<};
end = {Alt+>};


scroll down = {Ctrl+v};
scroll up = {Ctrl+v};
cut = {Ctrl+k};
cut <number> times = {Ctrl+u} $1 {Ctrl+k};
yank = {Ctrl+y};
cycle = {Alt+y};

climb = {Ctrl+r};
fall = {Ctrl+s};

command = {Alt+x};
Camelize(string) := EvalTemplate('str(%s)[0:1].lower() + str(%s).title().replace(" ","")[1:]',$string, $string);
Titleize(string) := EvalTemplate('str(%s).title().replace(" ","")',$string);
Dashify(string) := EvalTemplate('str(%s).lower().replace(" ","-")',$string);
camel <_anything> = Camelize($1);
run <_anything> = Dashify($1);
title <_anything> = Titleize($1);