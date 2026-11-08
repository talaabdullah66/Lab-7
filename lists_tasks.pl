% Lab 7 - Part 2 Tasks

% Task 1: remove all occurrences of X from the list
% base case: the empty list
deleteElement(_, [], []).
% the head is X, so skip it (the cut gives only one answer)
deleteElement(X, [X|T], R) :-
    !,
    deleteElement(X, T, R).
% the head is not X, so keep it
deleteElement(X, [H|T], [H|R]) :-
    deleteElement(X, T, R).

% Task 2: put X at the end of the list
% adding to an empty list gives a list with only X
add_at_the_end(X, [], [X]).
% keep the head and go through the rest of the list
add_at_the_end(X, [H|T], [H|R]) :-
    add_at_the_end(X, T, R).

% Another solution using append:
% add_at_the_end(X, L, R) :- append(L, [X], R).
