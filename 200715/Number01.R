# 1
n1 <- 5           # n1: 5
n2 <- 3           # 3
re1 <- n1 + n2    # 8
re1 <- n1 - n2    # 2
re1 <- n1 * n2    # 15
re1 <- n1 / n2    # 1.66666..
re1 <- n1 %/% n2  # 1
re1 <- n1 %% n2   # 2

re1 <- n1 ** n2   # 125
re1 <- n1 ^ n2    # 125
re1 <- 2 ** (1/2) # 제곱근 2
re1 <- sqrt(2)    # 제곱근 2

re1 <- abs(-2)    # 2
re1 <- 10 ** 10   # 1e+10 제곱 표현
re1 <- 2 * 10**10 # 2e+10
re1 <- 2e-10      # 2e+10


# 2
n1 <- 5           # 5
n2 <- -3          # -3
re1 <- n1 == n2   # FALSE
re1 <- n1 != n2   # TRUE

re1 <- n1 > n2    # TRUE
re1 <- n1 >= n2   # TRUE
re1 <- n1 < n2    # FALSE

# 3
re1 <- n1 >= 0 & n2 >= 0   # FALSE
re1 <- n1 >= 0 | n2 >= 0   # TRUE
re1 <- !(n1 < n2) # TRUE

xor(T,T)          # FALSE
xor(F,T)          # TRUE
xor(T,F)          # TRUE
xor(F,F)          # FALSE

a <- c(1,0,2)     # 1 0 2
b <- c(0,1,3)     # 0 1 3
a | b             # TRUE TRUE TRUE
a & b             # FALSE FLASE TRUE
a || b            # TRUE
a && b            # FALSE

# 4_1
condition <- 1    # 1
x <- 100          # 100
if(condition == TRUE)
  print("Heoll world!")
 
# 4_2
if(x > 100) {
  print("more than 100")
} else {          # indent 주의
  printf("less than 100")
}

# 4_3
n1 <- 95
if(n1 > 90) {
  cat('A')
} else if ( n1 > 80) {
  cat('B')
} else {
  cat('C')
} 
# A

# 4_4
v1 <- c(95,80,95,65,99)
ifelse(v1 > 90, 'A', 'B')   # "A" "B" "A" "B" "A"
ifelse(v1 > 90, 'A', ifelse(v1 > 80,'B','C'))  # "A" "C" "A" "C" "A"

# 5
switch(EXPR = 2,5,6,7)        # 6, EXPR에 2저장, 2번째 케이스인 6 출력
switch('B', A = '1', B='2')   # 2
switch('a', A =,a='1', B='2') # 1

# 6
which(c(12:55) == 13)                           # 2
which(c('루피','뽀로로','크롱') == '뽀로로')    # 2
which(c('루피','뽀로로','크롱') == '포비')      # 0

if(length(which( c('루피','뽀로로','크롱') == '포비')) == 0)
  cat('값이 없습니다.')  


# 7_1
v1 <- c(95,80,95,65,99)
for (kk in v1)
{
  print(kk)
}
# 95 80 95 65 99

# 7_2
for(kk in v1)
{
  if(kk > 90){
    cat(kk,":",'A',"\n")
  }else if (kk >80)
  {
    cat(kk,":",'B',"\n")
  }else
  {
    cat(kk,":",'C',"\n")
  }
}
# 95 : A
# 80 : C
# 95 : A
# 65 : C
# 99 : A

# 7_3
for(kk in v1)
{
  if(kk %% 2 == 0) #짝수
  {
    break
  } else {
    print(kk)
  }
}
# 95

# 7_4
for(kk in v1)
{
  if(kk %% 2 == 0) 
  {
    next  #skip
  }else{
    print(kk)
  }
}
# 95 95 65 99

# 7_5
# 구구단 출력
for (kk in 2:9)
{
  cat('----', kk, '------','\n')
  
  for (jj in 1:9)
  {
    cat(kk,'x',jj,'=', kk*jj,'\n')
  }
}

# 8 
v1 <- c(95,80,95,65,99)
idx <- 0
while(idx < length(v1))
{
  idx <- idx+1
  if(v1[idx] %% 2 == 0) 
  {
    next  #skip
  }else{
    print(v1[idx])
  }
}
# 95
# 95
# 65
# 99

# 9
v1 <- c(95,80,95,65,99)
idx <- 0
repeat{
  if(idx >= length(v1))
    break
  idx <- idx+1
  if(v1[idx] %% 2 == 0) 
  {
    next  #skip
  } else {
    print(v1[idx])
  }
}
# 95
# 95
# 65
# 99

# 10
# for 
oddSum <- 0
for(n in 101:200) {
  if(n %% 2 == 1)
    oddSum <- oddSum +n
}
oddSum

# while
oddSum <- 0
n <- 101
while(n <= 200){
  if(n %% 2 == 1)
    oddSum <- oddSum + n
  n <- n + 1
}
oddSum

# repeat
oddSum <- 0
n <- 101
repeat{
  if(n > 200)
    break
  if(n %% 2 == 1)
    oddSum <- oddSum + n
  n <- n + 1
}
oddSum
