#!/usr/bin/awk -f

function stack_push(val){
	stack[index++]=val;
}
function stack_pop(){
	return stack[--index];
}
function stack_size(){
	return index-1;
}
BEGIN{
	index=1
}

