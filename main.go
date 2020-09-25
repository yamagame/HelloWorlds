package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func printStep(text string) int {
	var sum int
	token := strings.Split(text, ":")
	if len(token) >= 2 {
		count, _ := strconv.Atoi(strings.TrimSpace(token[0]))
		str := strings.TrimSpace(token[1])
		for i := 0; i < count; i++ {
			for j := 0; j <= i; j++ {
				fmt.Print(str)
				sum += len(str)
			}
			fmt.Println("")
		}
	}
	return sum
}

func main() {
	if len(os.Args) >= 2 {
		os.Exit(printStep(os.Args[1]))
	} else {
		stdin := bufio.NewScanner(os.Stdin)
		for stdin.Scan() {
			os.Exit(printStep(stdin.Text()))
		}
	}
}
