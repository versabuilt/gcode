%
O9002		(Dispatcher Program - Two Op)

(Unload Op 1 Vise or Load Op 1 Vise)

(*** BEGIN OPTIONAL TABLE LOAD SECTION ONLY TO BE INCLUDED IF PART CONFIGURATION USES Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs ***)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 P8001)                     (M98 P8001 call Table Load 2 program ONLY if part configuration uses Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL TABLE LOAD SECTION ***)

(Unload Op 2 Vise)

(*** BEGIN OPTIONAL TABLE LOAD SECTION ONLY TO BE INCLUDED IF PART CONFIGURATION USES Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs ***)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 P8002)                     (M98 P8002 call Table Load 2 program ONLY if part configuration uses Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL TABLE LOAD SECTION ***)

(Optional Op 1 CNC Settle)

(*** BEGIN OPTIONAL RUN OP1 CNC SETTLE PROGRAM ONLY TO BE INCLUDED IF PART CONFIGURATION USES RUN CNC SETTLE PROGRAM ***)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 PXXXX)                     (M98 PXXXX call Y or Z push as a subprogram or paste in Y/Z push gcode)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL RUN OP 1 CNC SETTLE PROGRAM SECTION ***)

(Op 1 Program)

(*** BEGIN OP 1 PROGRAM ***)
G103 P0.                        (Enter CNC specific code to enable look-ahead)
M98 PXXXX                       (M98 PXXXX call Op1 as a subprogram or paste in op1 gcode)
G103 P1.                        (Enter CNC specific code to disable look-ahead)
M51                             (Set Handshake using M code controlable relay)
M0                              (Wait for robot to complete transfer)
M61                             (Clear handshake using M code controlable relay)
(*** END OP 1 PROGRAM ***)

(Part Transfer)
(Table Wash if Internal VersaBlast and OP2 Empty Jaws Blow off)

(*** BEGIN OPTIONAL TABLE WASH SECTION ONLY TO BE INCLUDED IF PART CONFIGURATION USES OP2 EMPTY JAWS BLOW-OFF and uses Internal VersaBlast***)
(G103 P0.)                      (Enter CNC specific code to enable look-ahead.)
(M98 P8001)                     (M98 P8001 call Table Wash program ONLY if part configuration uses OP1 empty jaws blowoff and uses Internal VersaBlast)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(G103 P0.)                      (Enter CNC specific code to enable look-ahead)
(*** END OPTIONAL TABLE WASH SECTION ***)

(Table Load for Op Transfer)

(*** BEGIN OPTIONAL TABLE LOAD SECTION ONLY TO BE INCLUDED IF PART CONFIGURATION USES Run Table Load Program for Vise Load only after Op Transfer ***)
(Note the Run Table Load Program for Vise Load only after Op Transfer is redundant if using Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 P8002)                     (M98 P8002 call Table Load 2 program ONLY if part configuration uses Run Table Load Program for Vise Load only after Op Transfer)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL TABLE WASH SECTION ***)

(Load Op 2 Vise)

(*** BEGIN OPTIONAL TABLE LOAD SECTION ONLY TO BE INCLUDED IF PART CONFIGURATION USES Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs ***)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 P8002)                     (M98 P8002 call Table Load 2 program ONLY if part configuration uses Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL TABLE LOAD SECTION ***)

(Loaded Op2 Jaws, now need to unload Op1 Jaws or not last part need to still call)

(*** BEGIN OPTIONAL TABLE LOAD SECTION ONLY TO BE INCLUDED IF PART CONFIGURATION USES Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs ***)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 P8001)                     (M98 P8001 call Table Load 2 program ONLY if part configuration uses Run Table Load Program for Vise Load/Unload, if Using Two Different Table Load Programs)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL TABLE LOAD SECTION ***)

(Optional Op 2 CNC Settle)

(*** BEGIN OPTIONAL RUN OP 2 CNC SETTLE PROGRAM ONLY TO BE INCLUDED IF PART CONFIGURATION USES RUN CNC SETTLE PROGRAM ***)
(G103 P0.)	                    (Enter CNC specific code to enable look-ahead)
(M98 PXXXX)                     (M98 PXXXX call Y or Z push as a subprogram or paste in Y/Z push gcode)
(G103 P1.)                      (Enter CNC specific code to disable look-ahead)
(M51)                           (Set Handshake using M code controlable relay)
(M0)                            (M0 Wait for robot to complete transfer)
(M61)                           (Clear handshake using M code controlable relay)
(*** END OPTIONAL RUN OP 2 CNC SETTLE PROGRAM SECTION ***)

(Op 2 Program)

(*** BEGIN OP 2 PROGRAM ***)
G103 P0.                        (Enter CNC specific code to enable look-ahead)
M98 PXXXX                       (M98 PXXXX call Op2 as a subprogram or paste in op1 gcode)
G103 P1.                        (Enter CNC specific code to disable look-ahead)
M51                             (Set Handshake using M code controlable relay)
M0                              (Wait for robot to complete transfer)
M61                             (Clear handshake using M code controlable relay)
(*** END OP 2 PROGRAM ***)




M99
%


