package main

import (
	"flag"
	"fmt"
	"os"
)

func main() {
	fileName := flag.String("c", "conf/prod.yml", "config file path")
	flag.Parse()

	b, _ := os.ReadFile(*fileName)
	fmt.Println("dev:" + string(b))
}
