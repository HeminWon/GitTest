package test

import "testing"

func TestMapInit(t *testing.T) {
	m1 := map[int]int{1: 1, 2: 4, 3: 9}
	t.Log(m1[2])
	t.Logf("len m1=%d", len(m1))

	m2 := map[int]int{}
	m2[4] = 16
	t.Logf("len m2=%d", len(m2))

	m3 := make(map[int]int, 10)
	t.Logf("len m3=%d", len(m3))
}

func TestAccessNotExitingKey(t *testing.T) {
	m1 := map[int]int{}
	t.Log(m1[1])

	m1[2] = 0
	t.Log(m1[2])

	if v, ok := m1[2]; ok {
		t.Logf("kay 3's value is: %d", v)
	} else {
		t.Log("key 3 is not existing.")
	}

}

func TestMapTravel(t *testing.T) {
	m1 := map[int]int{1: 1, 2: 4, 3: 9}
	for k, v := range m1 {
		t.Log(k, v)
	}

	m2 := make(map[int]int, 10)
	for k, v := range m2 {
		t.Log(k, v)
	}
}

func TestMapWithFunctionValue(t *testing.T) {
	m := map[int]func(op int) int{}
	m[1] = func(op int) int { return op }
	m[2] = func(op int) int { return op * op }
	m[3] = func(op int) int { return op * op * op }

	t.Log(m[1](2), m[2](2), m[3](2))
}

func TestMapForSet(t *testing.T) {
	myset := map[int]bool{}
	myset[1] = true
	n := 1
	if myset[n] {
		t.Logf("%d is existing", n)
	} else {
		t.Logf("%d is not existing", n)
	}
	myset[3] = true
	t.Log(len(myset))
	delete(myset, 1)
	t.Log(myset)
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
