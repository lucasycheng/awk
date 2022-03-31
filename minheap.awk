#!/usr/bin/awk -f
# minheap
function pq_add(val){
	pq[ii++]=val;
	asort(pq);
}
function pq_poll(){
	result = (length(pq)>0)?pq[1]:"error"
	for(i=2;i<=length(pq);i++){
		pq[i-1]=pq[i];
	}
	delete pq[--ii]	
	return result
}
function pq_size(){
	return length(pq)
}
BEGIN{
	ii=1;


	pq_add(4)
	pq_add(3)
	pq_add(1)
	pq_add(2)
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
	pq_add(1)
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
	print(pq_poll())
}
