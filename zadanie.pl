dopasuj(0,[G|_],G) :- !.
dopasuj(Q,[_|C],X) :- Q1 is Q - 1, dopasuj(Q1,C,X).   

mysl(J,F,S,A,Sz,R,M) :-
    
    Pies=0,
    Rybka=1,
    Kanarek=2,
    Papuga=3,
    Kot=4,
    Chomik=5,
    Waz=6,

    Z0 = ["pies","kot","rybka","chomik","papuga","waz","kanarek"],
    P0 = [0,1,2,3,4,5,6],

    J=[PJ,ZJ],
    F=[PF,ZF],
    S=[PS,ZS],
    A=[PA,ZA],
    Sz=[PSz,ZSz],
    R=[PR,ZR],
    M=[PM,ZM],
    
    select(PJ,P0,P1),   PJ\=Chomik, PJ\=Rybka,      PJ\=Papuga, PJ\=Kanarek,    PJ\=Kot,    PJ\=Waz,    
    select(PF,P1,P2),   PF\=Papuga, PF\=Waz,        PF\=Chomik,                 PJ<PF,
    select(PS,P2,P3),   PS\=Kanarek,PS\=Chomik,     PS\=Papuga,                 PJ<PS,      PF<PS,
    select(PA,P3,P4),   PA\=Waz,    PA\=Kot,        PA\=Chomik, PA\=Rybka,      PA\=Pies,   PA\=Papuga, PF<PA,  PA>PJ,  PA<PS,
    select(PSz,P4,P5),  PSz\=Kot,   PSz\=Kanarek,                               PSz>PA,     PSz>PF,     PS>PSz, PSz>PJ,
    select(PR,P5,P6),   PR\=Waz,    PR\=Rybka,      PR\=Papuga, PR\=Chomik,     PJ<PR,      PF<PR,      PSz<PR, PR>PA,  PR<PS,
    select(PM,P6,_),    PM\=Kanarek,PM\=Kot,        PM\=Waz,    PM\=Papuga,     PS>PM,      PA<PM,      PM>PR,  PM>PF,  PM>PJ,  PM>PSz,

    dopasuj(PJ,Z0,ZJ),
    dopasuj(PF,Z0,ZF),
    dopasuj(PS,Z0,ZS),
    dopasuj(PA,Z0,ZA),
    dopasuj(PSz,Z0,ZSz),
    dopasuj(PR,Z0,ZR),
    dopasuj(PM,Z0,ZM).
