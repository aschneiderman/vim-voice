# Voice commands for gvim

include folders.vch;
include numbers.vch;
include letters.vch;
include pandas.vch;

Edit [My] Configuration = ':e $'  'MYVIMRC' {Enter};

<delimiters> := (Quotes = '"' | 'Single Quotes' = "'" | 'Double Quotes' = '"' | Parentheses = '('  
		| Brackets = '[' | 'Curly Braces' = '{' | Braces = '{'
		| HTML = '<' | 'Close HTML' = '>' | 'Close Tag' = '>'	# NOTE: only works with commands I created
		| 'Equal Sign' = '='
);

# --- File Management ---------------
Open Document = {Alt+f} o;
List Files = {Esc}  ':bro ol' {Enter};
File <numbers> = $1  {Enter};
Latest File = {Esc}  ':bro ol' {Enter} 1{Enter};

Show (Projects | Folders) = {Esc}':e C:\Voice\folders.vch'  {Enter} Wait(100) {Down_9};
[Open] Project <folder> =  {Esc} ':e ' $1 {Enter} Wait(100) {Down_9};
[Open] Current Project = {Esc} ':e .' {Enter} Wait(100) {Down_9};
Up Directory = '-';
Search [Directory] <letters> = '/^' $1;
# :Sex = directory of current file 
# :Vex for vertical split
#   :sp. = Split horizontally on current directory (:vsp. For vertical)
# % = new file

(List Buffers = 'ls' | Buffer List = 'ls' | 'Next Buffer' = 'bn' | 'Last Buffer' = 'bp' | 'Close Buffer' = 'bd'
	| 'Next Window' = 'bn' | 'Last Window' = 'bp' | 'Close Window' = 'bd') 
	= {Esc}':' $1  {Enter};


Save Document = {Esc}  Wait(100) ':w' {Enter};
Save As = {Alt+f} a;
Go (Quit = 'quit' | Close = 'close' | 'Close without saving' = 'close!'  | Set = 'set') = ':' $1 {Enter};
[Go] Quit without Saving = {Esc}  Wait(100) ':quit!' {Enter};

Save and Reload = {Esc}  Wait(100) ':w' {Enter} Wait(100)  SendSystemKeys({Alt+Tab}) Wait(100) {Ctrl+r};


# --- Basic Navigation ---------------
<numbers> (Up = 'k' | Down = 'j' | Right = 'l' | Left = 'h') = $1 $2;
Homa = {Esc} 0;
Enda = {Esc}  '$';
(Top |  Go to Top) = {Esc} gg;
(Bottom | Go to Bottom) = {Esc} G;
(Move Forward | Move Right | Go Forward) <numbers> (words = 'w' |  blocks = '}') = $2 $3;
(Move Forward | Move Right | Go Forward) <numbers> (end | enda) words = $2 'e';
(Move Back | Move Left | Go Back) <numbers> (words = 'b' | blocks = '{') = $2 $3;
Fine (Text | Alpha) <letters> = {Esc} f $2;
Find Back <letters> = {Esc} F $1;
Fine Number 1..9 = {Esc} '/' $1 {Enter};
Go (Search | Find) = {Esc} '/\c';         # \c = case insensitive
Fine <delimiters> = {Esc} '/' $1 {Enter};
Insert (Before = 'i' | After = 'a') <delimiters> = {Esc} '/' $2 {Enter} Wait(100) $1;
Fine Tag = {Esc} '/' '<' {Enter};
Insert (Before = 'i' | After = 'a') tag = {Esc} '/' '<' {Enter} Wait(100) $1;


(Find Again | Next Fine | Next Find) = n;
Line 1..100 = {Esc} ':' $1  {Enter};


# --- Basic Editing ---------------
(Do | Go) (Insert = 'i' | Append = 'A' | Escape = '{Esc}') = $2;
(Insert = 'i' | Escape = '{Esc}') = $1;
Nexta = {Esc} A {Enter};
Enda Insert = {Esc} A;

(Do Again | Repeat That) = '.';
(Undo | Undo That) = {Esc} u;
Redo = {Esc} {Ctrl+r};

(Kill = 'x') <numbers> = $2  $1;
(Kill | Delete) Word = 'dw';
(Kill | Delete) <numbers>  Words = 'd' $2 'w';
Dee Dee = 'dd';
Cut to End of Line = 'd$';
Cut to End of Word = 'de';

('Go Visual' | Mark | 'Visual Mode') = V;
('Delete That' = 'd' |  'Yank That' = 'y' | 'Paste' = 'p' | 'Change That' = 'c' | 'Join That' = 'J') = $1;
Paste That = {Esc} Wait(100) '"+gP';
Copy That = '"*y';
Copy Line = {Esc} V Wait(100)  '"*y';
Select Line = {Esc} V;

do test = {Esc} i  Wait(100) "strawberry";

(Delete= 'd' | Change = 'c') Between Tags = $1 i t;
(Delete= 'd' | Change = 'c') (Next = '/' | Last = '?') Tag = {Esc} $2 '>' {Enter} $1 i t;
(Delete= 'd' | Change = 'c') between <delimiters> = $1 i $2;
(Delete= 'd' | Change = 'c') (Next = '/' | Last = '?') <delimiters> = {Esc} $2 $3 {Enter} $1 i $3;
(Delete= 'd' | Change = 'c') (Next = '/' | Last = '?') (Heading = '<h' | Header = '<h' | Paragraph = '<p') 
		= {Esc} $2 '\c' $3 {Enter} $1 i t;




Select All = {Alt+e}  s {Enter};
Grab Everything = {Alt+e} s  {Enter} Wait(100) {Alt+e} c {Enter} Wait(100) {Alt+Tab};




1..20 Spaces = Repeat($1, ' ');




Delete Line = 'dd';
Delete <numbers> Lines = $1 'dd';




# --- HTML and Bootstrap commands (until I'm sure I can get Ultisnips to work) ------------
Next One = {Esc} A;
Start (Heading | Header) 1..5 = '<h' $2 '></h' $2 '>'   Wait(100) {Left_5};
Wrap [In] (Heading | Header) 1..5 = {Esc} I '<h' $2 '>' {Esc} A '</h' $2 '>' {Esc} Wait(100) {Enter};
Wrap [in] (para = 'p' | item = 'li') = {Esc} I '<' $1 '>' {Esc} A '</' $1 '>' {Esc}  Wait(100) {Enter};
Start Para = {Esc} I '<p>';
Stop Para = {Esc} A '</p>' {Esc};
Start List = {Esc} i '<ul>' {Enter} {Esc};
Stop List = {Esc} i '</ul>' {Esc};

Paste Image = {Esc} a ' <img align=right hspace="7"  src="' {Esc} p a '" />';		# Might also add: width="200"

Start Div (id | class) = {Esc} a '<div ' $1 '= "">' Wait(100) {Left_2};
Stop Div = {Esc} A '</div>' ;
Start Columns = {Esc} i  Wait(100) '<div class="container">{Enter}<div class="row">{Enter}'
		 {Enter} '</div>' {Enter}  '</div>'  {Esc} {Up_3}   Wait(100) A;
Start Column 1..12 = {Esc} a '<div class="col-md-' $1 '">' {Enter} '</div>'{Enter}  {Esc} {Up_2} Wait(100) A;





# --- Ultisnips (if I can get it working on all PCs) ------------------------
Do Ultisnips = {Esc} ':UltiSnipsEdit'{Enter};

(Next = 'j' | Last = 'k') Tag = {Ctrl+$1};
Start Snippet= {Esc} i 'snippet  {Enter} {Enter}endsnippet' {Esc} {Up_2} A;
Start (
	D3 = 'd3_template' | Code = 'D3_code_wrapper'
| 	form | 'form text'  | 'form button' | 'form select'
) = {Esc} i $1  Wait(100)  {Tab};




# --- COMMANDS TO ADD ------------------------

# Using bookmarks or whatever they are called � e.g., if I accidentally do the wrong thing and end up on the wrong line,
# g;  - last place I was where I made a change
# Ctrl-o  - If I jump to a place, copy a line, I can snap back 

# copying sets of lines, moving sets of lines
# :9yank - copy line 9
# :9t16 - copy line 9 to line 16
# :9.  - copy line 9 to current position 



# For adding quotes, HTML tags, etc. to text that's already there:
# http://stackoverflow.com/questions/10305952/vim-enclose-word-in-tag

# Commands I'm not sure about
# H,M,L: top, middle, and bottom of screen

