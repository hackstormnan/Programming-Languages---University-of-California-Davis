isUnion([], Set2, Set2).
isUnion([H|T], Set2, Zset) :- member(H, Set2), isUnion(T, Set2, Zset).
isUnion([H|T], Set2, [H|A]) :- \+(member(H, Set2)), isUnion(T, Set2, A). 


isIntersection([], _, []).
isIntersection([H|T], Set2, [H|A]) :- member(H, Set2), isIntersection(T, Set2, A).
isIntersection([H|T], Set2, Zset) :- \+(member(H, Set2)), isIntersection(T, Set2, Zset).


isEqual([], []).
isEqual([A|T], Set2) :- select(A, Set2, Rset), isEqual(T, Rset).
