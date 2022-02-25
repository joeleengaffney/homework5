#establish the deck
d=matrix(data=1:13,nrow=4,ncol=13,byrow=1,dimnames=NULL)
#establish a number for how many times the desired event happens (AABBB)
j=0
#establish a counting number
i=1
while (i<=1000000) {
  #draw 5 cards from the deck
  result=sample(d,replace=FALSE,5)
  x=table(result)
  set=array(x)
  if(any(set==2) && any(set==3)) {
      j=j+1
    }
  i=i+1
  }
print(j/1000000)