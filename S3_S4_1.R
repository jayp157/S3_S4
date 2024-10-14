my_data <- data.frame(
  name = c("Jay", "Khushali", "Yash"),
  age = c(25, 30, 22),
  weight = c(140, 110, 150)
)
print(my_data)
summary(my_data)
plot(my_data)


my_data_s3 <- structure(my_data, class = "PersonDataS3")
my_data_s3
print.PersonData <- function(x) {
cat(" S3 object for personal data:")
cat( " Name:", x$name, "\n")
cat( " Age:",x$age, "\n")
cat( " Weight:",x$weight, "\n")
}
print(my_data_s3)

setClass("PersonDataS4",
slots = list(name = "character", age = "numeric", weight = "numeric"))

my_data_s4 <- new("PersonDataS4",
name = c("Jay", "Khushali", "Yash"),
age = c(25, 30, 22),
weight = c(140, 110, 150))

print(my_data_s4)

isS4(my_data_s4)


typeof(my_data_s3)
typeof(my_data_s4)





