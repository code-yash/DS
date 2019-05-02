library(sqldf)
#question 1 (a)
gender = c('M','M','F','F','F','M','')
weight = c(70,80,100,56,78,89,90)
height = c(5.6,7,4.5,5.3,5.5,6,6)
BMI = c(10,12,13.5,11,10.6,'',13.4)
#(a)

df<- data.frame(gender,weight,height,BMI)
df
#(b)

df1<-df[df$gender=='M',]
mean((df1$BMI))

df1<-df[df$gender=='F',]
mean((df1$BMI))
#or
tapply(BMI,gender,mean)


#(c)
df[df == "",] = "##" #not work

#(d)

m <- max(df$weight)
df$gender[df$weight == m]

h<- max(df$height)
df$gender[df$height == h]
m <- max(df$weight)
df$gender[df$weight == m]


#or 

df$gender[which.max(df$weight)]
df$gender[which.max(df$height)]

#Question 2

Class = c('1st','2nd','3rd','Crew','1st','2nd','3rd','Crew') 
Sex = c('Male','Male','Female','Male','Female','Female','Female','Female')
Age = c('Child','Child','Child','Child','Child','Child','Child','Child')
Survived = c('No','No','No','Yes','No','No','Yes','No')
Freq = c(0,0,35,0,0,0,17,0)
titanic = data.frame(Class,Sex,Age,Survived,Freq)
titanic
#(a)
titanic_male = titanic[titanic$Sex == 'Male' & Survived == "Yes",]
titanic_male
sqldf("select count(*) from titanic where Sex = 'Male' AND Survived = 'Yes'")
titanic_female = titanic[titanic$Sex == 'Female' & Survived == "Yes",]
sqldf("select * from titanic where Sex = 'Female' AND Survived = 'Yes'")
titanic_female
titanic_child = titanic[titanic$Age == 'Child' & Survived == 'Yes',]
titanic_child


#or 

titanic_ma  = subset(titanic,Sex == "Male" & Survived == 'Yes')
titanic_ma

titanic_fe  = subset(titanic,Sex == "Female" & Survived == 'Yes')
titanic_fe

titanic_ch = subset(titanic,Age == 'Child' & Survived == 'Yes')
sqldf("select count(*) from titanic where Age = 'Child' AND Survived = 'Yes'")
table(titanic_ch)

count(titanic_ma)#not work
count(titanic_fe,Freq)
sum(titanic_ch)

count(titanic,vars = 'titanic_ch')

(c)

male_female = titanic[titanic$Sex == 'Female' & Survived == "Yes" || titanic$Sex == 'Male' & Survived == "Yes"]
male_female
sort(na.omit(male_female$Freq))
sqldf("select * from  titanic where (Sex = 'Female' OR Sex = 'Male') AND Survived = 'Yes' order by Freq DESC")
male_femal = subset(titanic,Survived == "Yes") 
male_femal

sort(male_femal$Freq)

(d)

child_not_suv  = subset(titanic,Age == "Child" & Survived == "No")
table(child_not_suv$Class)

