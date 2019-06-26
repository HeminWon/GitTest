package test

import (
	"fmt"
	"testing"
	"time"
)

func serviceSelect() string {
	time.Sleep(time.Millisecond * 1500)
	return "Done"
}

func otherTaskSelect() {
	fmt.Println("working on something else")
	time.Sleep(time.Millisecond * 100)
	fmt.Println("Task is done.")
}

func asyncServiceSelect() chan string {
	retCh := make(chan string)

	go func() {
		ret := serviceSelect()
		fmt.Println("returned result.")
		retCh <- ret
		fmt.Println("service exited.")
	}()
	return retCh
}

func TestAsyncSelect(t *testing.T) {
	retCh := asyncServiceSelect()
	otherTaskSelect()
	fmt.Println(<-retCh)
	time.Sleep(time.Second * 1)
}

func TestSelect(t *testing.T) {
	select {
	case ret := <-asyncServiceSelect():
		t.Log(ret)
	case <-time.After(time.Millisecond * 50):
		t.Error("time out")
	}
}
