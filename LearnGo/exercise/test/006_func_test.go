package test

import (
	"fmt"
	"testing"
)

func sum(ops ...int) int {
	ret := 0
	for _, op := range ops {
		ret += op
	}
	return ret
}

func Test_VarParams(t *testing.T) {
	t.Log(sum(1, 2, 3, 4))
}

func clear() {
	fmt.Println("clear resources.")
}

func TestDefer(t *testing.T) {
	defer clear()
	fmt.Println("star")
	panic("error")
	fmt.Println("end")
}
