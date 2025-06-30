package main

import (
	"fmt"
	"time"
)

// LongFunction is a function that's excessively long.
func LongFunction(a, b, c, d, e, f int) {
	fmt.Println("Start of long function")

	// Many lines of code here...
	fmt.Println("Doing something...")
	time.Sleep(1 * time.Second)
	fmt.Println("Doing something else...")
	time.Sleep(1 * time.Second)
	fmt.Println("And another thing...")
	time.Sleep(1 * time.Second)
	fmt.Println("Yet another task...")
	time.Sleep(1 * time.Second)
	fmt.Println("Still going...")
	time.Sleep(1 * time.Second)
	fmt.Println("Almost done...")
	time.Sleep(1 * time.Second)
	fmt.Println("Finally finished.")

	// Even more code...
	x := 10
	y := 5
	result := x + y
	fmt.Println("Result:", result)
	// More calculations
	a := 2
	b := 3
	c := a * b
	fmt.Println("C:", c)
	// And even more
	d := 7
	e := 1
	f := d - e
	fmt.Println("F:", f)

	//And even more lines of code...
	for i := 0; i < 10; i++ {
		fmt.Println(i)
	}
}

// EmptyFunction is an empty function.
func EmptyFunction() {
	//This is an empty function
}

func main() {
	LongFunction()
	EmptyFunction() // Call the empty function
}
