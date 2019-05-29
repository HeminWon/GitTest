package test

import (
	"testing"
	"time"
)

type Employee struct {
	ID            string
	Name, Address string
	DoB           time.Time // 出生日期
	Position      string
	Salary        int
	ManagerID     string
}

func TestStructInit(t *testing.T) {

	var dilbert = Employee{"0001", "lihua", "hangzhou", time.Now(), "guyuan", 80000, "0000"}

	dilbert.Salary -= 5000 // demoted, for writing too few lines of code.
	t.Log(dilbert)

	position := &dilbert.Position
	*position = "Senior " + *position // promoted, for outsourcing to Elbonia
	t.Log(dilbert)

	var employeeOfTheMonth *Employee = &dilbert
	// employeeOfTheMonth.Position += " (proactive team player)"
	(*employeeOfTheMonth).Position += " (proactive team player)"
	t.Log(dilbert)

}

type Point struct {
	X, Y int
}

type Circle struct {
	Point
	Radius int
}

type Wheel struct {
	Circle
	Spokes int
}

func TestNestedStruct(t *testing.T) {
	var w Wheel
	w.Circle.Point.Y = 10
	w.X = 10

	w1 := &Wheel{Circle{Point{8, 8}, 8}, 16}
	t.Logf("%T", w1)

	w2 := Wheel{Circle{Point{8, 8}, 8}, 16}
	t.Logf("%T", w2)

}
