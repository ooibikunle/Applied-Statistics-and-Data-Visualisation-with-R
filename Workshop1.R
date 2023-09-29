# Part 1
x = c(4, 8, 23, 2, 16, 7)
mean(x) # arithmetic mean
median(x) # middle value
length(x) # number of elements in a vector or list
range(x) # largest and smallest value
sd(x) # standard deviation
var(x) # variance

help(max)

summary(x)

pulse = c(120, 134, 152)
exercise_level = c("light", "intense", "intense")
time_in_mins = c(30, 20, 20)
exercise_dataframe = data.frame(pulse, exercise_level, time_in_mins)
print(exercise_dataframe)
summary(exercise_dataframe)

exercise_dataframe$exercise_level = as.factor(exercise_dataframe$exercise_level)
summary(exercise_dataframe)

exercise_dataframe[1,3]
exercise_dataframe[,1]
exercise_dataframe$pulse
exercise_dataframe[1,]
exercise_dataframe[1:2,2:3]
exercise_dataframe[,-3]

exercise_dataframe$pulse>130
exercise_dataframe[exercise_dataframe$pulse>130,]

completed_training = c(1, 0, 1)
exercise_dataframe[completed_training == 1,]


# Part 2
data()
cars
summary(cars)
# Adjust margin and figure size
par(mar = c(5, 5, 2, 2))  # Specify custom margins
options(repr.plot.width = 6, repr.plot.height = 4)  # Specify custom figure size
plot(cars)

hist(cars$speed)
hist(cars$dist)
plot(density(cars$speed))
plot(density(cars$dist))


# Part 3: Data Visualization with R
Thai_tourist = read.csv('Thaitourism1.csv', header= TRUE)
names(Thai_tourist)
head(Thai_tourist)
tail(Thai_tourist)
str(Thai_tourist)
summary(Thai_tourist)

Thai_tourist_full = read.csv('Thaitourism2.csv', header= TRUE)
names(Thai_tourist_full)
head(Thai_tourist_full)
tail(Thai_tourist_full)
str(Thai_tourist_full)
summary(Thai_tourist_full)

Thai_2016 = Thai_tourist[Thai_tourist$Year == 2016,]
Thai_2016

Thai_UK = Thai_tourist_full[Thai_tourist_full$nationality == 'UnitedKingdom',]
Thai_UK

# Bar plots
barplot(Thai_2016$Tourists_1000s)
barplot(Thai_2016$Tourists_1000s,names.arg = Thai_2016$Region)
barplot(Thai_2016$Tourists_1000s,names.arg=Thai_2016$Region,horiz = TRUE)
barplot(Thai_2016$Tourists_1000s,names.arg = Thai_2016$Region,col= c('red','blue'))
barplot(Thai_2016$Tourists_1000s,names.arg = Thai_2016$Region,col = rainbow(8))

# Histograms
hist(Thai_UK$tourists)
hist(Thai_UK$tourists, breaks = 16)
hist(Thai_UK$tourists, freq = FALSE)
hist(Thai_UK$tourists, labels = TRUE)
hist(Thai_UK$tourists, xlab = 'No. of UK Tourists per month', col = rainbow(8))

# Box plots
# Code below crates a new dataframe called Thai_Europe to hold only data from Europe Region.
# subset() function return subsets of vectors, matrices or data frames which meet conditions. The subset( ) function is the easiest way to select variables and observations from large dataset.
# droplevels() function is used to drop unused levels from factors in a data frame.
Thai_Europe = droplevels(subset(Thai_tourist_full, region == 'Europe'))
boxplot(Thai_Europe$tourists, data = Thai_Europe)
boxplot(tourists~nationality, data = Thai_Europe, col = rainbow(8))
boxplot(tourists~nationality, data = Thai_Europe, col = rainbow(8), horizontal = TRUE)
boxplot(tourists~nationality, data = Thai_Europe, col = rainbow(8), subset = nationality %in% c('France','Russia','Germany'))

# Pie charts
pie(Thai_2016$Tourists_1000s)
pie(Thai_2016$Tourists_1000s,labels = Thai_2016$Region, col = rainbow(8))
percent = round(100*Thai_2016$Tourists_1000s/sum(Thai_2016$Tourists_1000s), 1)
percent = paste(Thai_2016$Region, "-",percent,"%") # add percents to labels
pie(Thai_2016$Tourists_1000s, labels = percent, col = rainbow(8))

# Using the ggplot2 package
install.packages('ggplot2')
library(ggplot2)
qplot(Region, Tourists_1000s, data = Thai_tourist)
qplot(Region, Tourists_1000s, data = Thai_tourist, color = Year)
qplot(Region, Tourists_1000s, data = Thai_tourist, color = Year, size = I(10))
qplot(Region, Tourists_1000s, data = Thai_tourist, geom = "boxplot", fill = I("red"))

# Challenge 1
qplot(tourists, data = Thai_UK, geom = 'histogram', fill = I('red'))

# Challenge 2
qplot(tourists, data = Thai_UK, geom = 'density', fill = I('red'))