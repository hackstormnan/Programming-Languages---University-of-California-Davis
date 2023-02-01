

reachable(StartState, FinalState, []) :- StartState = FinalState.

reachable(StartState, FinalState, [H|T]) :- transition(StartState, H, B), 
reachable(A, FinalState, T), member(A, B).



