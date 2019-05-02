#(i)
maxspeed <-sample(rep(100:120),size = 100,replace = TRUE)
maxspeed

brands <-sample(c("Tata","Maruti","Hyundai"),size=100,replace = TRUE)
brands

df<-data.frame(brands,maxspeed)
df
df1<-sort(df$maxspeed)
data.frame(brands,df1)
tapply(maxspeed,brands,mean)
plot(tapply(maxspeed,brands,mean))
prop.test(0.33,110.1250)

#(ii)


pnorm(100,14,2.5) #normal distribution



#(iii)

v1<-sample(c('dog','cat',NA,'gold-fish'),size = 1000,replace = TRUE)
v2<-sample(c('bir','dal','mum'),size = 1000,replace = TRUE)
d<-cbind(v1,v2)
print(na.omit(d))
prop.table(table(d))
barplot(prop.table(table(d)))
#(iv)

f<-pnorm(100,8,1.3)
s1<-sample(c('trout','roy','shrimp'),size = 100,replace = TRUE)
s2<-sample(c('trout','roy','shrimp'),size = 100,replace = TRUE)
df<-data.frame(s1,s2)       
df
quantile(f)
mean(f)
median(f)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(f)
#(v)

