(Two-Op 4 Vise Generic Brother Dispatcher Program)
(FILE NAME - O1000.TXT)

(#100 is our part count)
(#101 is our op cycle count and must be initialized to 1)

(review for ending condition)
IF[#100 EQ 0] GOTO 99 

(our main loop)
IF[#101 EQ 1] GOTO 1
IF[#101 EQ 2] GOTO 2
IF[#101 EQ 3] GOTO 3
IF[#101 EQ 4] GOTO 4
IF[#101 EQ 5] GOTO 5
IF[#101 EQ 6] GOTO 6
IF[#101 EQ 7] GOTO 7
IF[#101 EQ 8] GOTO 8
#3000=5(VB Dispatcher Macro Error)

N1
(Wash Pallet 1)
#101=2
M98 P1236 
GOTO 99

N2
(Swing Pallet 1 back to the robot)
#101=3
GOTO 99

N3 
(Mill Op 1 Pallet 1)
#101=4
M98 P1234 
GOTO 99

N4 
(Wash Pallet 2)
#101=5
M98 P1236 
GOTO 99

N5 
(Swing Pallet 2 back to the robot)
#101=6
GOTO 99

N6 
(Mill Op 1 Pallet 2)
#101=7
M98 P1234 
#100=#100 - 1
GOTO 99

N7 
(Wash Pallet 1)
#101=8
M98 P1236 
GOTO 99

N8 
(Swing Pallet 1 back to the robot)
#101=9
GOTO 99

N9 
(Op 2 Pallet 1)
#101=10
M98 P1234 
#100=#100 - 1
GOTO 99

N10 
(Wash Pallet 2)
#101=11
M98 P1236 
GOTO 99

N12 
(Swing Pallet 2 back to the robot)
#101=13
GOTO 99

N13 
(Op 2 Pallet 2)
#101=1
M98 P1234 
#100=#100 - 1
GOTO 99

N99 
M30
