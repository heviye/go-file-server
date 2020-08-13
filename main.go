package main

import (
	"flag"
	"fmt"
	"net/http"
)

func main() {
	var path string
	var port int
	flag.StringVar(&path, "path", "/home/mov", "file path")
	flag.IntVar(&port, "port", 8080, "listen port")
	flag.Parse()

	fmt.Println("path", path)
	fmt.Println("port", port)

	http.ListenAndServe(fmt.Sprintf(":%d", port), http.FileServer(http.Dir(path)))
}
