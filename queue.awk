#!/usr/bin/awk -f

function queue_add(val){
	queue[tail++] = val;
}
function queue_poll(){
	return queue[head++];
}
function queue_size(){
	return tail-head;
}
BEGIN{
	head=1;
	tail=1;
}
