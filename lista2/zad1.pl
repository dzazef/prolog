usun_pierw([_|X], X).

usun_ost([_], []).
usun_ost([X|Y], [X|W])  :- usun_ost(Y, W).

usun_pierw_ost(X, Y)    :- usun_pierw(X, X1), usun_ost(X1, Y).

% usuwaj pierwszy i ostatni element z listy tak długo, aż zostanie sam element, lub zwróć false
srodkowy([X], X).
srodkowy(L, X)          :- usun_pierw_ost(L, L1), srodkowy(L1, X).