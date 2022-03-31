#!/usr/bin/awk -f

function comparator(i1,v1,i2,v2){
	first = tolower(v1)
	second = tolower(v2)
	if(first<second) return -1
	else if(first>second) return 1
	else return 0 
}
BEGIN{
	input[1] = "a"
	input[2] = "b"
	input[3] = "Ab"
	input[4] = "db"
	asort(input, output, "comparator")
	print("Before:")
	for(key in input)print(input[key])
	print("After:")
	for(key in output)print(output[key])
}
#Before:
#a
#b
#Ab
#db
#After:
#a
#Ab
#b
#db
