# Voice commands for gvim

include folders.vch;
include numbers.vch;
include pandas.vch;
<letters> := (alpha = a | bravo = b | Charlie = c | Delta = d | echo = e | foxtrot = f | golf = g | hotel = h 
	| India = i | Juliet = j  | kilo = k | Lima = l | Mike = m | November = n | Oscar = o | Poppa = p 
	| Québec = q | Romeo = r | Sierra = s | tango = t three spaces | uniform = u | Victor = v | whiskey = w 
	| 'x-ray' = x | Yankee = y | Zulu = z);
<delimiters> := (Quotes = '"' | 'Single Quotes' = "'" | 'Double Quotes' = '"' | Parentheses = '('  
		| Brackets = '[' | 'Curly Braces' = '{' | Braces = '{' | HTML = '<' | Tags = '<');

Project Sandwich = {Esc}  ':e C:\GitHub\d3_sandwich\sandwiches\Dendrogram' {Enter}  Wait(100) {Down_9};
# --- File Management ---------------
Open Document = {Alt+f} o;
List Files = {Esc}  ':bro ol' {Enter};
Latest File = {Esc}  ':bro ol' {Enter} Wait(100) 1 {Enter};

File <numbers> = $1  {Enter};
Project <folder> =  {Esc} ':e ' $1 {Enter} Wait(100) {Down_9};
Project Current   = {Esc} ':e .' {Enter} Wait(100) {Down_9};
Get (	 'Home Folders' = 'C:\Users\Anders\Documents\Voice\folders.vch' 
	) =  {Esc}':e ' $1 {Enter} Wait(100) {Down_9};
Show (Projects | Folders) = {Esc}':e C:\Users\Anders\Documents\Voice\folders.vch'  {Enter} Wait(100) {Down_9};
Edit [My] Configuration = ':e $'  'MYVIMRC' {Enter};
Up Directory = '-';
Search [Directory] <letters> = '/^' $1;
# :Sex = directory of current file 
# :Vex for vertical split
#   :sp. = Split horizontally on current directory (:vsp. For vertical)
# % = new file



Save Document = {Esc}  Wait(100) ':w' {Enter};
Save As = {Alt+f} a;
Go (Quit = 'quit' | Close = 'close' | 'Close without saving' = 'close!'  | Set = 'set') = ':' $1 {Enter};
[Go] Quit without Saving = {Esc}  Wait(100) ':quit!' {Enter};


# --- Basic Navigation ---------------
<numbers> (Up = 'k' | Down = 'j' | Right = 'l' | Left = 'h') = $1 $2;
Homa = {Esc} 0;
Enda = {Esc}  '$';
(Top |  Go to Top) = {Esc} gg;
(Bottom | Go to Bottom) = {Esc} G;
(Move Forward | Move Right | Go Forward) <numbers> (words = 'w' |  blocks = '}') = $2 $3;
(Move Forward | Move Right | Go Forward) <numbers> (end | enda) words = $2 'e';
(Move Back | Move Left | Go Back) <numbers> (words = 'b' | blocks = '{') = $2 $3;
Fine Text <letters> = {Esc} f $1;
Find Back <letters> = {Esc} F $1;
Fine Number 1..9 = {Esc} '/' $1 {Enter};
Next Fine = n;
Line 1..100 = {Esc} ':' $1  {Enter};


# --- Basic Editing ---------------
(Do | Go) Insert = i;
(Do | Go) Escape = {Esc};
Go Append = A;
Nexta = {Esc} A {Enter};
			# commands for changing

(Do Again | Repeat That) = '.';
(Undo | Undo That) = {Esc} u;
Redo = {Esc} {Ctrl+r};

(Kill = 'x') <numbers> = $2  $1;
(Kill | Delete) Word = 'dw';
(Kill | Delete) <numbers>  Words = 'd' $2 'w';
Dee Dee = 'dd';
Cut to End of Line = 'd$';
Cut to End of Word = 'de';

(Delete= 'd' | Change = 'c') between <delimiters> = $1 i $2;
(Delete= 'd' | Change = 'c') (Next = '/' | Last = '?') <delimiters> = {Esc} $2 $3 {Enter} $1 i $3;
(Delete= 'd' | Change = 'c') (Next = '/' | Last = '?') 
	(Heading = '<h' | Header = '<h' | Paragraph = '<p') 
	= {Esc} $2 '\c' $3 {Enter} $1 i t;



Strawberry test = 'vi<';

Paste That = {Alt+e} p;
Select All = {Alt+e}  s {Enter};
Grab Everything = {Alt+e} s  {Enter} Wait(100) {Alt+e} c {Enter} Wait(100) {Alt+Tab};




1..20 Spaces = Repeat($1, ' ');


Do Ultisnips = {Esc} ':UltiSnipsEdit'{Enter};


(Next = 'j' | Last = 'k') Tag = {Ctrl+$1};
Start Snippet= {Esc} i 'snippet  {Enter} {Enter}endsnippet' {Esc} {Up_2} A;
Start (
	D3 = 'd3_template' | Code = 'D3_code_wrapper'
| 	form | 'form text'  | 'form button' | 'form select'
|	href
) = {Esc} i $1 {Tab};



Delete Line = 'dd';
Delete <numbers> Lines = $1 'dd';

# Commands for command line mode
Yank That = 'y';




# ---Things to do
# change the configuration file


# Commands to add:
# g;  - last place I was where I made a change
# Ctrl-o  - If I jump to a place, copy a line, I can snap back 
# :9yank - copy line 9
# :9t16 - copy line 9 to line 16
# :9.  - copy line 9 to current position 


# Commands I'm not sure about
# H,M,L: top, middle, and bottom of screen