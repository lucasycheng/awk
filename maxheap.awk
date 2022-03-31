#!/usr/bin/awk -f
# Maxheap
function pq_add(val){
	pq[ii++] =val
	asort(pq)
}
function pq_poll(){
	return (--ii<=0)?"error":pq[ii]
}
function pq_size(){
	return ii
}
BEGIN{
	ii=1

	pq_add(4)
	pq_add(2)
	pq_add(3)
	pq_add(5)
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
}
