package test

import (
	"fmt"
	"testing"
	"time"
)

func service() string {
	time.Sleep(time.Millisecond * 150)
	return "Done"
}

func otherTask() {
	fmt.Print("working on something else")
	time.Sleep(time.Millisecond * 100)
	fmt.Printf("Task is done.")
}

func TestService(t *testing.T) {
	fmt.Println(service())
	otherTask()
}

func asyncService() chan string {
	retCh := make(chan string)

	go func() {
		ret := service()
		fmt.Print("returned result.")
		retCh <- ret
		fmt.Print("service exited.")
	}()
	return retCh
}

func TestAsyncService(t *testing.T) {
	retCh := asyncService()
	otherTask()
	fmt.Println(<-retCh)
	time.Sleep(time.Second * 1)
}
