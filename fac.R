n<-readline(prompt="INPUT A NUM")
n<-as.integer(n)
print("FACTORS:")
for(i in 1:n){
if(n%%i==0){
  print(i)
}
}