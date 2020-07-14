########## 행렬
mv1 <- 1:20

mtx <- matrix(mv1, nrow = 5)
mtx
mtx <- matrix(mv1, nrow = 5, byrow = T)
mtx

v1 <- 80:84
v2 <- 95:99
m1 <- cbind(v1,v2)
m1
m2 <- rbind(v1,v2)
m2

score <- matrix(70:89, nrow=5)
score
colnames(score)

colnames(score) <- c('kor','eng','com','gym')
rownames(score) <- c('학생1','학생2','학생3','학생4','학생5')
score

score[1:3 , 1:2]
score[1:2,]
score[,-3]
score[,c(-3,1)] ## 오류 -3과 1을 같이 사용할 수 없다
score[,'gym']

m1<-matrix(1:20, ncol = 4,nrow=5)
m1

m1[2:3,]


######################### 리스트

lt1 <- list(1,"a",TRUE,1+4i)
lt1

lt2 <- list(title = "Numbers",numbers = 1:10, data = TRUE)
lt2
str(lt2)

lt3 <- list(title = "Recrusive", numbers = 1:10, lst=list(1,2))
lt3
str(lt3)


lt3[c(1,2)]
str(lt3[c(1,2)])

lt3["title"]
str(lt3["title"])

lt3[1]
str(lt3[1])

lt3[[1]]
str(lt3[[1]])

lt3$title
str(lt3$title)


############# 데이터 프레임

vd1 <- c("영수","영미","철수","철이","미애")
vd2 <- c(15,14,16,13,15)
vd3 <- c(T,F,T,T,F)

student <- data.frame(이름=vd1,나이=vd2,성별=vd3)
student
str(student)

student <- data.frame(이름=vd1,나이=vd2,성별=vd3, stringsAsFactors= F)
str(student)


student
student[,1]
student[,c(1,2)]
student[,-1]
student[,c("성별","이름")]
student[["이름"]]
student$이름

id <- c(1901,1902,1903)
dept <- c("영업", "기술","마케팅")
posit <- c("과장","부장","대리")

df1 <- data.frame(id=id, dept=dept , position = posit, stringsAsFactors = F)
df1
df1$dept
str(df1)
