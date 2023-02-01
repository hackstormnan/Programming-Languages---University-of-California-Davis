package min

// Min returns the minimum value in the arr,
// and 0 if arr is nil.
func Min(arr []int) int {
	// TODO: implement this function.
	if len(arr) == 0 {
		return 0
	}
	var l int

	l = arr[0]
	for i := 1; i < len(arr); i++ {
		if arr[i] < l {
			l = arr[i]
		}
	}
	return l
}
