servesAll(american, [salad, steak, sandwiches, burgers, fried_chicken]).
servesAll(burger_place, [burgers, fries, onion_rings]).
servesAll(chinese, [eggrolls, rice, shrimp, soup, noodles]).
servesAll(indian, [papadam, bagan_bharta, rice, tandoori, naan]).
servesAll(italian, [salad, pasta, cioppino, snapper, bread, garlic_bread]).
servesAll(japanese, [sashimi, rice, tempura, noodles]).
servesAll(mediterranean, [gyros, hummus, pita, falafel.]).
servesAll(mexican, [tacos, beans, rice, enchiladas, fish_tacos]).
servesAll(pizza_place, [pizza, salad, garlic_bread]).
servesAll(thai, [rice, noodles, larb, pad_thai]).

serves(Kind, Dish) :- 
    servesAll(Kind, Dishes), 
    member(Dish, Dishes).

dishAll(vegetarian, [beans, bagan_bharta, enchiladas, falafel, hummus, pizza, salad, soup, tempura, onion_rings, naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).
dishAll(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches, fried_chicken, tacos, tandoori, larb]).
dishAll(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).

dish(Type, Dish) :-
    dishAll(Type, Dishes),
    member(Dish, Dishes).

cuisineAll(american, [waterman_grille, red_stripe]).
cuisine(burger_place, shake_shack).
cuisineAll(chinese, [yans, chinatown]).
cuisine(indian, kabob_n_curry).
cuisineAll(italian, [pasta_beach, al_forno]).
cuisine(japanese, haruki).
cuisineAll(mediterranean, [andreas, east_side_pocokets]).
cuisineAll(mexican, [bajas, dolores, tallulahs]).
cuisineAll(pizza_place, [pizza_marvin, mikes]).
cuisineAll(thai, [heng, bees, lims]).

cuisine(Kind, Store) :-
    cuisineAll(Kind, Stores),
    member(Store, Stores).

location(american, wayland).
location(burger_place, thayer_street).
location(chinese, thayer_street).
location(indian, thayer_street).
locationAll(italian, [wayland, fox_point]).
location(japanese, wayland).
location(mediterranean, thayer_street).
locationAll(mexican, [thayer_street, fox_point]).
locationAll(pizza_place, [fox_point, thayer_street]).
locationAll(thai, [thayer_street, fox_point, wayland]).

location(Kind, Place) :-
    locationAll(Kind, Places),
    member(Place, Places).

locType(Type, Place, Store)  :-
    location(Kind, Place),
    serves(Kind, Dish),
    cuisine(Kind, Store),
    dish(Type, Dish).

/*Questions:
1. location(X, wayland).
2. cuisine(italian, X).
3. serves(X, snapper).
4. serves(X, rice).
5. locType(vegetarian, fox_point, X).
*/