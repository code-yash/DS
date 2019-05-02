#(ii)
n<-as.numeric(readline("enter the n number:"))
sum<-(n*(n+1))/2
paste("Sum number:",sum)).

#(iii)

v<-as.numeric(readline("enter the n number"))


#(iv)

largest<- function(l) max(l)

largest(c(3,6,1,7))

#(v)

total<- function(list) cumsum(list)

total(c(1,4,5))

#(vi)

palindrome<- function(s) s== paste(rev(strsplit(s,NULL)[[1]]),collapse = '')
palindrome("nitin")

#vii

linsearch <-function(list1,l){
  
  pos = 1
  flag = FALSE
  
  for(e in list1){
    
       if(e ==l ){
         
         flag = TRUE
         break
       }
    pos = pos+1
  }
  if(flag){
    cat("Element found",pos)
  }
  else
  {
    cat("Element not found")
  }
    
}

linsearch(c(4,5,2),2)

#binary

binsearch <- function(list1,item){
  
       pos = -1
       mid = 0
       l = 1
       u = length(list1)
       while(l<=u){
         
           mid = as.integer((l+u)/2)
           
           if(list1[mid] == item )
           {
             pos = mid
             break
           }
           else if(list1[mid]>item){
                u = mid-1
           }
           else{
             l = mid+1
           }
       }
       
      if(pos!=1){
        cat("found element",pos)
        
      }
      else{
        cat("Not found")
        
      } 
  
}

binsearch(c(10,20,30,40),40)
