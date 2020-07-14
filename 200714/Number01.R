a<-c(1,3,5)
a
class(a)
str(a)
length(a)

b<-c("R","텍스트",'1','TRUE')
b
class(b)

c <- c(T,F,TRUE,FALSE)
c
class(c)

1:10
50:-30

seq(1,100,3)
seq(100,1,-3)

rep(1,3)
rep(1:4, times=3)
rep(c("a","b","c"), each=3)

rep(1:3, times=3, each=2)

########## 벡터의 원소에 이름 부여여
vn <- c("한림대","심리학")
vn
vn <- c(대학="한림대", 전공 = "심리학")
vn
names(vn)

vs <-c("하나","둘","셋","넷", "다섯")
names(vs) <- c("a","b","c","d","e")
vs

vs[1]
vs[c(1,3,5)]
vs[2:4]
vs[-3]
vs[-c(2,4)]
vs[c(3,3,3)]
vs[6]

vs["a"]
vs[c("a","c","d")]
vs["f"]


############# 벡터 연산
(v1 <- 1:5)
(v2 <- seq(10,50,10))
(v3 <- 1:3)
(v4 <- 1:10)

v1 + 10
v2 * 2
v1 > 2
v1 == 2

v1+v2
v1+v3   ### 오류를 출력한다
v1+v4

20 %in% v2
c(20,60) %in% v2


num3V2 <- c(20:50)
num3V2.a <- num3V2[6:10]
27 %in% num3V2.a

length(v2)
sum(v2)
mean(v2)
median(v2)
max(v2)

