% Lab 7 - Shopping Program
% Run it with: ?- menu.

:- dynamic basket/1.

% the basket starts with five items
basket([coffee, milk, chocolate, apple, juice]).

menu :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    choice(Choice).

% d: display all items
choice(d) :-
    basket(L),
    display_items(L),
    menu.

% a: add an item to the end of the basket
choice(a) :-
    write('enter the item you want to add it'), nl,
    read(Item),
    retract(basket(L)),
    append(L, [Item], NewL),
    assert(basket(NewL)),
    write('The item has been added'), nl,
    menu.

% e: exit
choice(e) :-
    write('Goodbye'), nl.

% any other input
choice(_) :-
    write('Wrong choice, try again'), nl,
    menu.

% display the list using recursion, stop at the empty list
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).
