# Voice commands for gvim

# NOTE: on the tutor for the vim


include folders.vch;
include numbers.vch;
include pandas.vch;

Go Insert = i;
Go Append = A;
Go Escape = {Esc};
Go (Quit = 'quit' | Close = 'close' | 'Close without saving' = 'close!'  | Set = 'set') = ':' $1 {Enter};
Go Quit without Saving = ':quit!' {Enter};
Save Document = ':w' {Enter};
Save As = {Alt+f} a;
Open Document = {Alt+f} o;

Edit [My] Configuration = ':e $'  'MYVIMRC' {Enter};


<numbers> (Up = 'k' | Down = 'j' | Right = 'l' | Left = 'h') = $1 $2;
(Kill = 'x') <numbers> = $1 $2;
(Kill | Delete) Word = 'dw';
(Kill | Delete) <numbers>  Words = 'd' $2 'w';
Cut to End of Line = 'd$';
Cut to End of Word = 'de';

(Move Forward | Go | Go Forward) <numbers> words = $2 'w';
(Move Forward | Go | Go Forward) <numbers> words (end | enda) = $2 'e';
Homa = 0;




Strawberry Test = "this is a test of the strawberry test. Let's go dataframes!" {Enter} {Enter} "and how about them apples?";