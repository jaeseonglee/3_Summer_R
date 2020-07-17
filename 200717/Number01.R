df <- data.frame(gender = c("M","M",NA,"F","F"),
                 score = c(1,2,3,NA,4),
                 stringsAsFactors = FALSE)
df
is.na(df)
table(is.na(df))
table(is.na(df$score))
mean(df$score)

df %>% filter(is.na(df$score))
df %>% filter(!is.na(df$score))
dfs <- df %>% filter(!is.na(df$score))
mean(dfs$score)
mean(df$score, na.rm = T)

dfn <- df %>% filter(!is.na(score) & !is.na(gender))
df_n <- na.omit(df)

df %>% summarise(mean_score = mean(score, na.rm = T))

#df$score <- ifelse(is.na(df$score), 4, df$score)

# 1
mpg2 <- as.data.frame(ggplot2::mpg)

# 1_1
mpg2[c(65,124,131,153,212),"hwy"] <- NA
View(mpg2)

# 1_2
table(is.na(mpg2$drv))
table(is.na(mpg2$hwy))

# 1_3
mpg2 %>% filter(!is.na(hwy)) %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

outlier <- data.frame(gen = c(1,2,3,2,1),
                      score = c(4,5,6,2,1),
                      stringsAsFactors = FALSE)

table(outlier$gen)
table(outlier$score)

outlier <- ifelse(outlier$gen == 3, NA, outlier$gen)

boxplot(mpg2$hwy)
boxplot(mpg2$cty)
boxplot(mpg2$cty)$stats

# 2_1
mpg2[c(10,14,58,93),"drv"]<-"k"
mpg2[c(29,43,129,203), "cty"] <- c(3,4,39,42)

table(mpg2$drv)

# 2_2
mpg2$drv <- ifelse(mpg2$drv == "k", NA,mpg2$drv)
table(mpg2$drv)
table(is.na(mpg2$drv))

# 2_3
boxplot(mpg2$cty)
boxplot(mpg2$cty)$stats
mpg2$cty <- ifelse(mpg2$cty < 9 | mpg2$cty >26, NA, mpg2$cty)
table(mpg2$cty)
table(is.na(mpg2$cty))
boxplot(mpg2$cty)

# 2_4
mean(!is.na(mpg2$cty))


p <- ggplot(mtcars, aes(wt, mpg)) 
p + geom_point()

ggplot(data=mtcars, aes(x=hp, y=mpg)) + 
  geom_point() + geom_smooth()

p<-ggplot(mtcars, aes(hp, mpg, color=factor(cyl)))  
p+geom_point() + geom_smooth()

ggplot(data=mtcars) + 
  geom_bar(mapping=aes(x=cyl, fill=as.factor(am)))

ggplot(data=mtcars) + 
  geom_bar(mapping=aes(x=cyl, fill=as.factor(am)), position = "fill")

ggplot(data=mtcars) + 
  geom_bar(mapping=aes(x=cyl, fill=as.factor(am)), position = "dodge")

ggplot(data=mtcars) + 
  geom_point(mapping=aes(x=as.factor(cyl), y=mpg))

ggplot(data=mtcars) + 
  geom_point(mapping=aes(x=as.factor(cyl), y=mpg), position = "jitter")

ggplot(data=mtcars) + 
  geom_bar(mapping=aes(x=cyl, fill=as.factor(am)), position = "dodge") +
  coord_polar()

