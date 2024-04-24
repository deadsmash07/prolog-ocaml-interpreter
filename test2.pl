% Facts
value(one, 1).
value(two, 2).

% Rules
sum(X, Y, Z) :- value(X, A), value(Y, B), Z is A + B.

% % Queries
% ?- sum(one, two, Result).
% ?- sum(two, two, 4).
