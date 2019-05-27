package test

import (
	"testing"
	"time"
)

type Employee struct {
	ID        string
	Name      string
	Address   string
	DoB       time.Time // 出生日期
	Position  string
	Salary    int
	ManagerID string
}

func TestStructInit(t *testing.T) {

	var dilbert = Employee{"0001", "lihua", "hangzhou", time.Now(), "guyuan", 80000, "0000"}

	dilbert.Salary -= 5000 // demoted, for writing too few lines of code.
	t.Log(dilbert)

	position := &dilbert.Position
	*position = "Senior " + *position // promoted, for outsourcing to Elbonia
	t.Log(dilbert)
}
