#install.packages('dplyr')

ggplot2::mpg
mpg2 <- as.data.frame(ggplot2::mpg)

View(mpg2)
dim(mpg2)
head(mpg2)
tail(mpg2)
head(mpg2,10)
summary(mpg2)
str(mpg2)


# 2 
mpg2 <- rename(mpg2, city = cty)
mpg2 <- rename(mpg2, highway = hwy)

mpg2$total <- (mpg2$city + mpg2$highway) / 2

summary(mpg2$total)
mpg2$test <- ifelse(mpg2$total > 23.5, "pass", "fail")

mpg2$grade <- ifelse(mpg2$total >= 35,"A",
                     ifelse(mpg2$total >= 25,"B",
                            ifelse(mpg2$total >= 15,"C","D")))
View(mpg2)
table(mpg2$total)
table(mpg2$grade)


# 예제
class <- rep(c(1,2,3), each = 4)
class
eng <- rep(c(95,53,51,96,74,15,68,74,85,95,20,60))
sci <- rep(c(52,91,63,59,47,51,35,34,57,86,50,90))
scores <- data.frame(class, eng, sci)
scores
scores %>% filter(class == 1)
scores %>% filter(eng <= 80)

scores %>% filter(class == 1 & eng <= 80)

score1 <- scores %>% filter(class == 1 & eng <= 80)
score1
mean(score1$eng)

scores %>% select(sci)
scores %>% select(-sci) # 제외

scores %>% filter(class == 1) %>% select(eng)


# mutate 함수
score2 <- scores %>% mutate(total = eng + sci)
View(score2)

score2 <- score2 %>% mutate(test = ifelse(
  total > 100, "pass", "fail"))
View(score2)


# 4_1
mpg2 %>% filter(displ >= 4 & displ <= 5) %>%
  select(highway) %>% arrange(highway)

hrank <- mpg2 %>% arrange(desc(highway))
View(hrank)

# 4_1 
mpg2 %>% filter(displ >= 4 & displ <= 5 ) %>%
  arrange(desc(highway)) %>% head()


mpg2 %>% group_by(manufacturer) %>% 
  summarise(mean_city = mean(city))

# 종합
mpg2 %>% group_by(manufacturer) %>%
  filter(class == "suv") %>%
  mutate(tot = (city + highway) / 2 ) %>%
  summarise(mean_tot = mean(tot)) %>%
              arrange(desc(mean_tot)) %>% 
  head(5)


# 데이터 합치기
test1 <- data.frame(id = c(1,2,3,4,5), mid = c(30,40,50,60,70))
test2 <- data.frame(id = c(1,2,3,4,5), final = c(45,55,65,75,85))

test <- left_join(test1, test2, by = "id")
View(test)

test3 <- data.frame(id = c(3,4,2,1,5), proj = c(36,85,74,13,65))

total <- left_join(test2, test3, by ="id")
View(total)


name <- data.frame(class = c(1,2,3), teacher = c("lee","kim","park"))

school <- left_join(scores,name, by = "class")
View(school)

View(mpg2)
mpg2 %>% filter(manufacturer == "toyota" | manufacturer == "audi") %>%
  select(manufacturer, city)

mpg2 %>% filter(manufacturer == "toyota") %>%
  summarise(mean_city = mean(city))

mpg2 %>% filter(manufacturer == "audi") %>%
  summarise(mean_city = mean(city))
