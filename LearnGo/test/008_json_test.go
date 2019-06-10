package test

import (
	"encoding/json"
	"testing"
)

type Movie struct {
	Title  string
	Year   int  `json:"released"`
	Color  bool `json:"color,omitempty"`
	Actors []string
}

var movies = []Movie{
	{Title: "Casablanca", Year: 1942, Color: false,
		Actors: []string{"Humphrey Bogart", "Ingrid Bergman"}},
	{Title: "Cool Hand Luke", Year: 1967, Color: true,
		Actors: []string{"Paul Newman"}},
	{Title: "Bullitt", Year: 1968, Color: true,
		Actors: []string{"Steve McQueen", "Jacqueline Bisset"}},
	// ...
}

func TestJsonMarshal(t *testing.T) {

	// if data, err := json.Marshal(movies); err != nil {
	// 	t.Log(err)
	// } else {
	// 	t.Logf("%s\n",data)
	// }
	if data, err := json.Marshal(movies); err == nil {
		t.Logf("%s\n", data)
	} else {
		t.Log(err)
		return
	}

}
