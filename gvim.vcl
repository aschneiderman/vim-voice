# Voice commands for gvim

include folders.vch;
include numbers.vch;
include pandas.vch;
<letters> := (alpha = a | bravo = b | Charlie = c | Delta = d | echo = e | foxtrot = f | golf = g | hotel = h | India = i | Juliet = j
	| kilo = k | Lima = l | Mike = m | November = n | Oscar = o | Poppa = p | Québec = q | Romeo = r | Sierra = s | tango = t
	| uniform = u | Victor = v | whiskey = w | 'x-ray' = x | Yankee = y | Zulu = z);


# Opening and Closing
Open Document = {Alt+f} o;
Save Document = ':w' {Enter};
Save As = {Alt+f} a;
Go (Quit = 'quit' | Close = 'close' | 'Close without saving' = 'close!'  | Set = 'set') = ':' $1 {Enter};
[Go] Quit without Saving = {Esc}  Wait(100) ':quit!' {Enter};


# Basic Navigation
<numbers> (Up = 'k' | Down = 'j' | Right = 'l' | Left = 'h') = $1 $2;
(Move Forward | Go | Go Forward) <numbers> words = $2 'w';
(Move Forward | Go | Go Forward) <numbers> (end | enda) words = $2 'e';
Homa = {Esc} 0;


# Basic Editing
(Do | Go) Insert = i;
(Do | Go) Escape = {Esc};
Go Append = A;

Undo = {Esc} u;
Redo = {Esc} {Ctrl+r};

(Kill = 'x') <numbers> = $1 $2;
(Kill | Delete) Word = 'dw';
(Kill | Delete) <numbers>  Words = 'd' $2 'w';
Cut to End of Line = 'd$';
Cut to End of Word = 'de';

<delimiters> := (Quotes = '"' | 'Single Quotes' = "'" | 'Double Quotes' = '"' | Parentheses = '('  | Brackets = '[' | 'Curly Braces' = '{' | Braces = '{'
			);
Delete Between <delimiters>  = {Esc}  Wait(100) '/' $1  {Enter} Wait(100)  ci $1;



Edit [My] Configuration = ':e $'  'MYVIMRC' {Enter};

# CAPTAIN'S LOG  ######
# undo command?
# Create buffer.py, so I can work on IPython Notebook snippets inside something that knows Python syntax
# (will need for his commands for, for example, cleaning out the buffer) (possibly multiple buffers?)

#  deleting until a particular character – will need to include a list of letters
test <letters> = $1;

# Add the commands for commenting and uncommenting, and then take my notes from the word document and put them into something I can edit with vim?

# NOTE: go back to the tutor for the vim