package test

import "testing"

func TestNew(t *testing.T) {

	p1 := new(int)
	t.Logf("p1 --> %#v \n ", p1)
	t.Logf("p1 point to --> %#v \n ", *p1)

	var p2 *int
	i := 0
	p2 = &i
	t.Logf("p2 --> %#v \n ", p2)
	t.Logf("p2 point to --> %#v \n ", *p2)
}

func TestNewSlice(t *testing.T) {
	var s1 []int
	if s1 == nil {
		t.Logf("s1 is nil --> %#v \n ", s1) // []int(nil)
	}

	s2 := make([]int, 0)
	if s2 == nil {
		t.Logf("s2 is nil --> %#v \n ", s2)
	} else {
		// if *s2 == nil {
		// 	t.Logf("*s3 is nill --> %#v \n ", *s2)
		// }
		t.Logf("s2 is not nill --> %#v \n ", s2) // []int{0, 0, 0}
	}

	s3 := new([]int)
	if s3 == nil {
		t.Logf("s3 is nil --> %#v \n ", s3)
	} else {
		if *s3 == nil {
			t.Logf("*s3 is nill --> %#v \n ", *s3)
		}
		t.Logf("s3 is not nill --> %#v \n ", s3) // []int{0, 0, 0}
	}
}

type HashMap map[string]bool

func TestMapInit2(t *testing.T) {
	m0 := HashMap{}
	m0["0"] = false
	t.Log(m0)

	m1 := &HashMap{}
	if *m1 == nil {
		t.Log("m1 == nil")
	}
	(*m1)["1"] = false
	t.Log(m1)

	m2 := new(HashMap)
	if *m2 == nil {
		t.Log("m2 == nil")
	}
	(*m2)["2"] = false
	t.Log(m2)
}
