% % Define some facts
% parent(tom, bob).
% parent(bob, liz).
% parent(bob, pat).
% parent(pat, jim).

% % Define a rule
% ancestor(X, Y) :- parent(X, Y).
% ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Facts
parent(alice, bob).
parent(bob, charlie).
parent(charlie, dave).

% Rules
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Queries
?- ancestor(alice, dave).
?- ancestor(bob, alice).



