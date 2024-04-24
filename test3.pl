% Facts
list_elements([1, 2, 3, 4, 5]).

% Rules
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% % Queries
% ?- list_elements(L), member(3, L).
% ?- list_elements(L), member(6, L).
