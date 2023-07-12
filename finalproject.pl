seasonAll(fall, [CS15, CS17, CS141, CS126]).
seasonAll(spring, [CS16, CS18, CS22, CS32, CS166]).

season(Term, Class) :-
    seasonAll(Term, Classes),
    member(Class, Classes).

levelAll(intro, [CS15, CS17, CS16, CS18]).
levelAll(intermediate, [CS33, CS32, CS22]).
levelAll(upper, [CS141, CS166, CS126]).

level(Difficulty, Class) :-
    levelAll(Difficulty, Classes),
    member(Class, Classes).

before(CS16, CS15).
before(CS18, CS17).
beforeAll(CS33, [CS16, CS18]).
beforeAll(CS32, [CS16, CS18]).
before(CS22, none)
beforeAll(CS141, [CS16, CS18, CS22]).
before(CS166, CS33).
beforeAll(CS126, [CS22, CS32]).
beforeAll(none, [CS15, CS17, CS22]).

before(Class, Prereq) :-
    beforeAll(Class, Prereqs),
    member(Prereq, Prereqs).

fall(Class) :-
    season(fall, Class).

spring(Class) :-
    season(spring, Class).

has_prereqs(Class, Prereq) :-
    before(Class, Prereq).

no_prereqs(Class) :-
    before(none, Class).

intro(Class) :-
    level(intro, Class).

intermediate(Class) :-
    level(intermediate, Class).

upper_level(Class) :-
    level(upper, Class).

can_take(Name, Class) :-
    class_has_no_prereqs(Class);
    doublereq(Name, Class);
    (has_prereqs(Class, Prereq),
    has_taken(Name, Prereq),
    Class \== CS126).

class_has_no_prereqs(Class) :-
    no_prereqs(Class);
    (has_prereqs(Class, Prereq),
    class_has_no_prereqs(Prereq)). 

has_taken(Name, Class) :-
    student(Name, Class).

StudentAll(mark, [CS15, CS16, CS17, CS18, CS32]).
StudentAll(elon, [CS15, CS16, CS17, CS22, CS141, CS33, CS166]).
StudentAll(sherylsandberg, [CS15, CS17, CS16, CS18, CS33, CS32, CS22]).
StudentAll(jeffbezos, [CS15, CS17, CS16, CS18, CS33, CS22, CS141, CS166]).

student(Name, Class) :-
    studentAll(Name, Classes),
    member(Class, Classes).

doublereq(Name, Class) :-
    has_taken(Name, CS22),
    has_taken(Name, CS32),
    Class == CS126.