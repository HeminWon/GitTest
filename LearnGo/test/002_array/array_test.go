package array

import "testing"

func TestArrayInit(t *testing.T) {
	var array1 [3]int
	array1[0] = 3

	arr1 := [4]int{1, 2, 3, 4}
	arr2 := [...]int{1, 2, 3, 4, 5, 6}

	t.Log(array1)
	t.Log(arr1)
	t.Log(arr2)

	c := [2][2]int{{1, 2}, {3, 4}}
	t.Log(c)

	d := [...][3]int{{1, 2, 3}, {1, 2, 3}, {1, 4, 5}}
	t.Log(d)
}

func TestArrayTravel(t *testing.T) {
	arr2 := [...]int{1, 2, 3, 4, 5, 6}

	for idx, e := range arr2 {
		t.Log(idx, e)
	}

}

func TestArraySection(t *testing.T) {
	arr2 := [...]int{1, 2, 3, 4, 5, 6}
	arr2_sec := arr2[1:3]
	t.Log(arr2_sec)
}
