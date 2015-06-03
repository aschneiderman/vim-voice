# Voice commands for gvim (test)

include folders.vch;
include numbers.vch;
include pandas.vch;
<letters> := (alpha = a | bravo = b | Charlie = c | Delta = d | echo = e | foxtrot = f | golf = g | hotel = h 
	| India = i | Juliet = j  | kilo = k | Lima = l | Mike = m | November = n | Oscar = o | Poppa = p 
	| Québec = q | Romeo = r | Sierra = s | tango = t three spaces | uniform = u | Victor = v | whiskey = w 
	| 'x-ray' = x | Yankee = y | Zulu = z);
<delimiters> := (Quotes = '"' | 'Single Quotes' = "'" | 'Double Quotes' = '"' | Parentheses = '('  
		| Brackets = '[' | 'Curly Braces' = '{' | Braces = '{' );


# --- File Management ---------------
Open Document = {Alt+f} o;
List Files = {Esc}  ':bro ol' {Enter};
File <numbers> = $1  {Enter};
Project <folder> =  {Esc} ':e ' $1 {Enter} Wait(100) {Down_9};
Project Current   = {Esc} ':e .' {Enter} Wait(100) {Down_9};
Get (	 'Home Folders' = 'C:\Users\Anders\Documents\Voice\folders.vch' 
	) =  {Esc}':e ' $1 {Enter} Wait(100) {Down_9};
Show (Projects | Folders) = {Esc}':e C:\Users\Anders\Documents\Voice\folders.vch'  {Enter} Wait(100) {Down_9};
Edit [My] Configuration = ':e $'  'MYVIMRC' {Enter};
Up Directory = '-';
Search [Directory] <letters> = '/^' $1;
			# :Sex = directory of current file (:Vex for vertical split)
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
(Move Forward | Go | Go Forward) <numbers> words = $2 'w';
(Move Forward | Go | Go Forward) <numbers> (end | enda) words = $2 'e';
(Move Back | Go | Go Back) <numbers> words = $2 'b';
(Move Forward | Go | Go Forward) <numbers> (sections | parentheses) = $2 '%';
Fine Text <letters> = {Esc} f $1;
Find Back <letters> = {Esc} F $1;
Line <numbers> = ':' $1  {Enter};
			# Commands to add:  bottom, top


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
Delete Between <delimiters>  = {Esc}  Wait(100) '/' $1  {Enter} Wait(100)  ci $1;

Paste That = {Alt+e} p;
Select All = {Alt+e}  s {Enter};
Grab Everything = {Alt+e} s  {Enter} Wait(100) {Alt+e} c {Enter} Wait(100) {Alt+Tab};





