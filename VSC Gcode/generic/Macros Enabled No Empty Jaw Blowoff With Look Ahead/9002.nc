%
O9001		(Dispatcher Program - One Op - Generic Macro Enabled With No Empty Jaw Blow Off, with look ahead) 

N10
G103 P0.	    (Enable Look-ahead)
M98 P[]       (Op1 Program inside P[])
G103 P1.      (Disable Look-ahead)
M51           (Set Handshake)
M0            (Wait for robot)
M61           (Clear Handshake)
G103 P0.	    (Enable Look-ahead)
GOTO 10
M30        
%