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

locationAll(thayer_street, [yans, bajas, andreas, chinatown, kabob_n_curry, shake_shack, east_side_pocokets, mikes, heng]).
locationAll(fox_point,[pizza_marvin, al_forno, bees, tallulahs, dolores]).
locationAll(wayland,[waterman_grille, lims, haruki, pasta_beach, red_stripe]).

location(Place, Store) :-
    locationAll(Place, Stores),
    member(Store, Stores).

dishRestaurantAll(vegetarian, [bajas, dolores, tallulahs, kabob_n_curry, andreas, east_side_pocokets, pizza_marvin, mikes, waterman_grille. red_stripe, pasta_beach, al_forno, yans, chinatown, haruki, shake_shack, heng, bess, lims]).
dishRestaurantAll(meat, [waterman_grille, red_stripe, shake_shack, bajas, dolores, tallulahs, andreas, east_side_pocokets, heng, bess, lims, pizza_marvin, mikes, kabob_n_curry])
dishRestaurantAll(seafood, [pasta_beach, al_forno, haruki, yans, chinatown, bajas, dolores, tallulahs])

dishRestaurant(Type, Store) :- 
    dishRestaurantAll(Type, Stores),
    member(Store, Stores).

locationOf(Type, Place, Store) :-
    location(Place, Store),
    dishRestaurant(Type, Store).

/*Questions:
1. location(X, wayland).
2. cuisine(italian, X).
3. serves(X, snapper).
4. serves(X, rice).
5. locationOf(vegetarian, fox_point, X).
*/