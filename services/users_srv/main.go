package main

import (
	"flag"
	"fmt"
	"os"
	"time"
)

func main() {
	fileName := flag.String("c", "conf/prod.yml", "config file path")
	flag.Parse()
	b, _ := os.ReadFile(*fileName)
	fmt.Println("dev:" + string(b))
	fmt.Println(time.Now().Format("2006-01-02 15:04:05"))
}
