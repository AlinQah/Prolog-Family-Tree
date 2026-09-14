% Gender facts
male(mubarak).
male(eyad).
male(yazeed).

female(shahad).
female(alin).
female(fay).
female(almas).
female(lolo).
female(sumo).
female(touq).

% Parents
parent(mubarak, alin).
parent(shahad, alin).

parent(mubarak, fay).
parent(shahad, fay).

parent(mubarak, almas).
parent(shahad, almas).

parent(mubarak, lolo).
parent(shahad, lolo).

parent(mubarak, eyad).
parent(shahad, eyad).

% Alin's daughters
parent(alin, sumo).
parent(alin, touq).

% Eyad's son
parent(eyad, yazeed).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.


















