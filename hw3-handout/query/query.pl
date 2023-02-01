/* All novels published during the year 1953 or 1996*/
year_1953_1996_novels(Book) :- novel(Book, 1953).
year_1953_1996_novels(Book) :- novel(Book, 1996).

/* List of all novels published during the period 1800 to 1900*/
period_1800_1900_novels(Book) :- novel(Book, Year), Year>=1800, Year=<1900.

/* Characters who are fans of LOTR */
lotr_fans(Fan) :- fan(Fan, L), member(the_lord_of_the_rings, L).

/* Authors of the novels owned by Chandler */
author_names(Author) :- fan(chandler, L), member(Book, L), author(Author, Books), member(Book, Books). 

/* Characters who are fans of Brandon Sanderson's novels */
fans_names(Fan) :- fan(Fan, L), member(Book, L), author(brandon_sanderson, Books), member(Book, Books).

/* Novels common between either of Phoebe, Ross, and Monica */
mutual_novels(Book) :- fan(phoebe, A), member(Book, A), fan(ross, B), member(Book, B).
mutual_novels(Book) :- fan(ross, B), member(Book, B), fan(monica, C), member(Book, C).
mutual_novels(Book) :- fan(phoebe, A), member(Book, A), fan(monica, C), member(Book, C).
