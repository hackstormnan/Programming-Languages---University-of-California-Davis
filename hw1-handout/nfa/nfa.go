package nfa

// A state in the NFA is labeled by a single integer.
type state uint

// TransitionFunction tells us, given a current state and some symbol, which
// other states the NFA can move to.
//
// Deterministic automata have only one possible destination state,
// but we're working with non-deterministic automata.
type TransitionFunction func(st state, act rune) []state

func Reachable( // `transitions` tells us what our NFA looks like
	transitions TransitionFunction, start, final state, input []rune) bool {
	// TODO Write the Reachable function,
	// return true if the nfa accepts the input and can reach the final state with that input,
	// return false otherwise

	var cur_state []state
	cur_state = append(cur_state, start)
	var temp_state []state
	temp_state = nil

	for i := 0; i < len(input); i++ {
		for a := 0; a < len(cur_state); a++ {
			temp_state = append(temp_state, transitions(cur_state[a], input[i])...)
		}
		cur_state = temp_state
		temp_state = nil
	}

	for i := 0; i < len(cur_state); i++ {
		if cur_state[i] == final {
			return true
		}
	}

	return false
}
