# Voice commands for emacs
# Words that you should add to your vocabulary:
#  paren
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
save = {Ctrl+x} {Ctrl+s};
exit = {Ctrl+x} {Ctrl+c};
window = {Ctrl+x}o;
buffer = {Ctrl+x}b;
shut = {Ctrl+x}k;
pull open <number> times = {Ctrl+u} $1 {Ctrl+x}"+";
boom = {Enter};
undo = {Ctrl+Shift+_};
die = {Alt+Backspace};
stab = {Alt+d};
tick = {Ctrl+d};
hack = {Backspace};
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
Chain(string) := EvalTemplate('str(%s).lower().replace(" ",", ")');
Lower(string) := EvalTemplate('str(%s).lower()',$string);
camel <_anything> = Camelize($1);
run <_anything> = Dashify($1);
title <_anything> = Titleize($1);
chain <_anything> = Chain($1);
lower <_anything> = Lower($1);

quit = {Ctrl+g};
escape = {Esc};

left paren = "(";
right paren = ")";
left brace = "{will";
right brace = "}";
left bracket = "[";
right bracket = "]";

paren expression <_anything> = "(" $1 ")" {Ctrl+b};
brace expression <_anything> = "{" $1 "}" {Ctrl+b};
bracket expression <_anything> = "[" $1 "]" {Ctrl+b};

# Some interesting ones which will require some emacs functions
#  that change their meaning with different major modes
# over = {Alt+x} end-expression {Enter} #Ex. for C: ";\n"
#    # Ex. for lisp: Write out as many parenthesis as needed to close out
#    #   top S-expression
# class = {Alt+x} create-class {Enter} #Ex. for C++: class skeleton {};
#    # ex. for OCaml: module skeleton = struct ...
#    # This would require Emacs templating.
# function = {Alt-x} create-function {Enter}
