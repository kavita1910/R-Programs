e_quakes<-datasets::quakes

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns

e_quakes[,c(1,2)]

df<-e_quakes[,-6]

e_quakes$depth

mean(e_quakes$depth)
summary(e_quakes[,3])

###########Summary of the data#########
summary(e_quakes$depth)
summary(e_quakes)

########Visualization Techniques#############
plot(e_quakes$depth)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$depth, type= "l") # p: points, l: lines,b: both
plot(e_quakes$depth, ylab = 'Depth', xlab = 'No of Instances', main = 'EARTHQUAKES',col = 'blue')

# Horizontal bar plot
barplot(e_quakes$mag, main = 'MAGNITUDE OF EARTHQUAKE', ylab = 'DEPTHS', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$mag)
hist(e_quakes$mag, 
     main = 'MAGNITUDE OF EARTHQUAKE',
     xlab = 'Mag', col='blue')

#Single box plot
boxplot(e_quakes$mag, main="Boxplot")
# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="n")

plot(e_quakes$depth)
plot(e_quakes$depth, e_quakes$mag)
plot(e_quakes$depth, type= "l")
plot(e_quakes$depth, type= "l")
plot(e_quakes$depth, type= "l")
barplot(e_quakes$depth, main = 'Depth of the earthquake',
        xlab = 'DEPTHS', col='green',horiz = TRUE)
hist(e_quakes$lat)
boxplot(e_quakes$lat)
boxplot(e_quakes[,0:4], main='Multiple Box plots')
