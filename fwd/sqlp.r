library(sqldf)
data("UCBAdmissions")

ucb <- as.data.frame(UCBAdmissions)

sqldf("select * from ucb")

majors<-data.frame(major= c("math","biology","engineering","computer Science","history","architecture"),
                   Dept = c(LETTERS[1:5],"others"), Faculty = round(runif(6,min = 10,max = 30)))                   

sqldf("select * from majors")

sqldf("select * from ucb where Gender = 'Female'")

sqldf("select * from ucb where Admit = 'Admitted'")

sqldf("select * from ucb where Admit = 'Admitted' order by Dept")

sqldf("select distinct(Dept) from ucb ")

sqldf("select sum(Freq) from ucb where Admit = 'Admitted'")

sqldf("select sum(Freq) from ucb where Admit = 'Rejected'")

sqldf("select sum(Freq) from ucb where Admit = 'Admitted' And Gender = 'Male'")

sqldf("select sum(Freq) from ucb where Admit = 'Rejected' And Gender = 'Female'")

sqldf("select Dept,avg(Freq) from ucb where Admit = 'Admitted' group by Dept")

sqldf("select count(major) from majors")

sqldf("select min(Freq) from ucb where Admit = 'Rejected'")

sqldf("select * from ucb where Freq between 20 AND 100")

sqldf("select * from ucb where Gender like 'Fe%'")

sqldf("select * from ucb where Gender like '__male%'")

sqldf("select * from ucb where Gender like 'Ma%'")
sqldf("select * from ucb where Gender like '_ale'")
sqldf("select * from ucb where Gender = 'Female' And Freq >=100")
sqldf("select * from ucb where Gender not like 'M_l_'")
sqldf("select Dept from ucb where Freq = (select max(Freq) from ucb where Admit = 'Admitted')")

sqldf("select Dept from ucb where Freq = (select max(Freq) from ucb where Admit = 'Admitted' And Gender = 'Female')")
sqldf("select Dept from majors where Faculty = (select max(Faculty) from majors)")

sqldf("select *from ucb inner join majors on ucb.Dept = majors.Dept")

sqldf("select *from ucb left join majors on ucb.Dept = majors.Dept")

sqldf("select *from ucb outer join majors on ucb.Dept = majors.Dept")
