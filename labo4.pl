% Caso base: un solo dígito
almacenar(N, [N]) :-
    N < 10.

% Caso recursivo: el último dígito va a la cabeza de la lista
almacenar(N, [D|L]) :-
    N >= 10,
    D  is N mod 10,
    N1 is N // 10,
    almacenar(N1, L).
