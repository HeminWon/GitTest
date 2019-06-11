package test

import (
	"fmt"
	"os"
	"sort"
	"strings"
	"testing"
)

type Person struct {
	Name string
	Age  int
}

type Persons []Person

// 获取此 slice 的长度
func (p Persons) Len() int { return len(p) }

// 根据元素的年龄降序排序 （此处按照自己的业务逻辑写）
func (p Persons) Less(i, j int) bool {
	return strings.ToLower(p[i].Name) < strings.ToLower(p[j].Name)
}

// 交换数据
func (p Persons) Swap(i, j int) { p[i], p[j] = p[j], p[i] }

func TestStructSort(t *testing.T) {
	persons := Persons{
		{
			Name: "xchuxia",
			Age:  20,
		},
		{
			Name: "dongtian",
			Age:  22,
		},
		{
			Name: "ftgyhujim",
			Age:  21,
		},
		{
			Name: "tuya example widget",
			Age:  20,
		},
		{
			Name: "Tuya OEM com xxx test aaa watchkitapp",
			Age:  22,
		},
		{
			Name: "tuya OEM com xxx test aaa watchkitapp2",
			Age:  22,
		},
		{
			Name: "Tuya OEM com xxx test aaa watchkitapp1",
			Age:  22,
		},
		{
			Name: "xxxxxxx",
			Age:  21,
		},
	}

	fmt.Println("排序前")
	for _, person := range persons {
		fmt.Println(person.Name, ":", person.Age)
	}
	sort.Sort(persons)
	fmt.Println("排序后")
	for _, person := range persons {
		fmt.Println(person.Name, ":", person.Age)
	}
}

func TestENV(t *testing.T) {
	env := os.Getenv("ENV")
	t.Logf(">>>>>>>>>> %s", env)
}
