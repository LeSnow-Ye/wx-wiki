#while循环
v <- c(1)
i <- 1

while (i < 50) {
  a<-2*i+1
  v=append(v,a)
  i = i + 1
  
}
print(v)
print(sum(v))