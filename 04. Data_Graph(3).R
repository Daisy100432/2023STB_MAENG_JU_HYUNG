table(X2023_STB_survey $Gender)


ECN <- table(X2023_STB_survey $Gender)

prop.table(ECN)

table(X2023_STB_survey $Gender)  #step 2 도수분포표 작성


gender_freq <- table(X2023_STB_survey$Gender)
relative_freq_table <- prop.table(gender_freq)
print(barplot(relative_freq_table)) # step 3 상대 도수분포표 

table(X2023_STB_survey $Gender, X2023_STB_survey $Grade) #step 4 교차표 작성

barplot(table(X2023_STB_survey $Nationality)) # step 5 국적 막대그래프 작성

barplot(table(X2023_STB_survey$residentialarea), horiz = TRUE) # step 6 (가로)막대그래프를 작성 
##cb=충북,dg=대구, ic=인천, kk=경기,su=서울, us=울산

entry <- table(X2023_STB_survey $Gender, X2023_STB_survey $Grade)
barplot(entry, legend = TRUE)  # step 7 두개의 인자로 막대그래프

pie(table(X2023_STB_survey $Grade )) # step 8 파이차트


hist(X2023_STB_survey$ Age ,  main="경영통계분석 수업의 연령 분포", col=terrain.colors(12)) # step 9 히스토그램

boxplot(X2023_STB_survey$`Grade`,  X2023_STB_survey$`Age`,  main="학년과 나이", col="black", names =  c("학년","나이"))

install.packages("ggplot2") #step 10
library(ggplot2)
boxplot_plot <- ggplot(X2023_STB_survey, aes(x = Grade, y = Age, group = Grade)) + geom_boxplot(fill = "skyblue") +
  labs(title = "Grade vs. Age", x = "Grade", y = "Age") + theme_minimal()
print(boxplot_plot)
#학년별로 나이의 평균값이 올라갈겄으로 기대된다. 군대를 갔다온 남성 3,4학년의 영향으로 학년이 올라감에따라 급격한 
# 학년별 나이 증가량이 보인다. 하지만 여학생의 수와 외국에서 온 학생(군대를 가지 않은)의 영향으로 평균값은 그대로인 모습 

plot(x=X2023_STB_survey$Grade,  y=X2023_STB_survey$Age,  xlab="학년", ylab="나이",  main="학년과 나이의 관계")
# step 11



