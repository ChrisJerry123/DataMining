#lokasi file
lokasi_file <- "C:/Politeknik/Semester_3/Data Mining/Praktikum/Tugas Besar"
setwd(lokasi_file)
getwd()

#pembacaan dataset
dataset <- read.csv("student.csv", sep = ",")
head(dataset)
tail(dataset)

#cluster
cl <- kmeans(dataset[1:2], 3)
cl$centers
cl
cl$size

#plot
plot(dataset[1:2], col = cl$cluster)
points(cl$centers, col = 1:2, pch = 9, cex = 2)
points
