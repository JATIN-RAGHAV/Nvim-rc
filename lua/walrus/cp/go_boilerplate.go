package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main(){
	reader := bufio.NewReader(os.Stdin)
	t := readInt(reader)
	for t > 0{
		t--

	}
}

func check(e error){
	if e != nil {panic(e)}
}

func readInt(r *bufio.Reader)int{
	line,err := r.ReadString('\n')
	check(err)
	line = strings.ReplaceAll(line,"\n","")
	line = strings.ReplaceAll(line, "\r","")
	num,_ := strconv.Atoi(line)
	return num
}

func readLineString(r *bufio.Reader)[]string{
	line, err := r.ReadString('\n')
	check(err)
	line = strings.ReplaceAll(line, "\n","")
	line = strings.ReplaceAll(line, "\r","")
	return strings.Split(line, " ")
}

func readLineNums(r *bufio.Reader)[]int{
	strArr := readLineString(r)
	res := make([]int,len(strArr))
	for i,n := range strArr{
		res[i],_= strconv.Atoi(n)
	}
	return res
}
