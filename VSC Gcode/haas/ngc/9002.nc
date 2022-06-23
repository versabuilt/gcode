%
O9002 (CDP Vise Control) ;
(Backwards compatible with mailbox vise control) ;
(Copyright 2018 Versabuilt, Inc.) ;
(Controller: Haas NGC) ;
(Protocol: CDP v3) ;
(Command Macro: 10000) ;
(Parameter Macro: 10001) ;
(Call with G65 Ppppp Ddd. Ccc.) ;
(Where dd is the required device number) ;
(dd = 1 to 3 - vise) ;
(Where cc is the command to perform) ;
(cc = 0 - close) ;
(cc = 1 - open) ;
(cc = 2 - close no error) ;
(cc = 3 - open no error) ;
(cc = 4 - close clamp) ;
(cc = 5 - open clamp) ;
(cc = 6 - exhaust) ;
(cc = 7 - pressurized) ;
(cc = 8 - float NO LONGER SUPPORTED) ;

(Disable lookahead, needs several lines after) ;
G103 P1 ;
;
;
;
;
;
;
;
;
;
;
;
;
(Close Command) ;
IF[#3 EQ 0] GOTO1 ;

(Open Command) ;
IF[#3 EQ 1] GOTO2 ;

(Close No Error Command) ;
IF[#3 EQ 2] GOTO3 ;

(Open No Error Command) ;
IF[#3 EQ 3] GOTO4 ;

(Close Clamp) ;
IF[#3 EQ 4] GOTO5 ;

(Open Clamp) ;
IF[#3 EQ 5] GOTO6 ;

(Exhaust) ;
IF [ #3 EQ 6] GOTO7 ;

(Pressurized) ;
IF [ #3 EQ 7] GOTO8 ;

(Float) ;
IF [ #3 EQ 8 ] GOTO9 ; 

(Close Command Operation) ;
N1 ;
#10000= 6 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Open Command Operation) ;
N2 ;
#10000= 5 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Close No Error Command Operation) ;
N3 ;
#10000= 10 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Open No Error Command Operation) ;
N4 ;
#10000= 9 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Close Clamp Operation) ;
N5 ;
#10000= 8 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Open Clamp Operation) ;
N6 ;
#10000= 7 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Exhaust Command Operation) ;
N7 ;
#10000= 12 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Pressurized Command Operation) ;
N8 ;
#10000= 13 ;
#10001= #7 ;
G65 P9001 C00 ;
(Enable lookahead) ;
G103 P0 ;
M99 ;

(Float Operation) ;
N9 ;
#3000= 15 (Float not supported) ;
%
