mysl(J,F,S,A,Sz,R,M) :-
    Z0 = ["pies","kot","rybka","chomik","papuga","waz","kanarek"],
    J=[PJ,ZJ],
    F=[PF,ZF],
    S=[PS,ZS],
    A=[PA,ZA],
    Sz=[PSz,ZSz],
    R=[PR,ZR],
    M=[PM,ZM],
    select(ZJ,Z0,Z1),ZJ\=chomik,ZJ\=rybka,ZJ\=papuga,ZJ\=kanarek,ZJ\=kot,ZJ\=waz,
    select(ZF,Z1,Z2),ZF\=papuga,ZF\=waz,ZF\=chomik,
    select(ZS,Z2,Z3),ZS\=kanarek,ZS\=chomik,ZS\=papuga,
    select(ZA,Z3,Z4),ZA\=waz,ZA\=kot,ZA\=chomik,ZA\=rybka,ZA\=psa,ZA\=papuga,
    select(ZSz,Z4,Z5),ZSz\=kot,ZSz\=kanarek,
    select(ZR,Z5,Z6),ZR\=waz,ZR\=rybka,ZR\=papuga,ZR\=chomik,
    select(ZM,Z6,Z7),ZM\=kanarek,ZM\=kot,ZM\=waz,ZM\=papuga.
