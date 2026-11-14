start :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE : '),
    read(Choice),
    process_choice(Choice, Basket).

process_choice(d, Basket) :-
    nl,
    display_list(Basket),
    menu(Basket).

process_choice(a, Basket) :-
    nl,
    write('enter the item you want to add it : '),
    read(Item),
    NewBasket = [Item | Basket],
    write('The item has been added'), nl,
    menu(NewBasket).

process_choice(e, _) :-
    write('Goodbye!'), nl.

process_choice(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

display_list([]).
display_list([Head | Tail]) :-
    write(Head), nl,
    display_list(Tail).














