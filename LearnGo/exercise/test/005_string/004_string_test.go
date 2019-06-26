package test

import "testing"

func TestString(t *testing.T) {
	var s string
	t.Log(s)
	s = "hello"
	t.Log(len(s))

	s = "\xE4\xB8\xA5"
	t.Log(s)

	s = "中"
	t.Log(len(s))

}
