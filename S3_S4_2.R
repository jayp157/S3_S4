patient_data <- data.frame(
  name = c("Jay", "Rahul", "Rushi"),
  age = c(27, 29, 28),
  blood_pressure = c(120, 130, 115),
  blood_sugar = c(90, 85, 100)
)

patient_data_s3 <- structure(patient_data, class = "PatientDataS3")

print.PatientDataS3 <- function(x) {
  cat("S3 Object: Patient Data\n")
  cat("Names: ", x$name, "\n")
  cat("Ages: ", x$age, "\n")
  cat("Blood Pressure: ", x$blood_pressure, "\n")
  cat("Blood Sugar: ", x$blood_sugar, "\n")
}

print(patient_data_s3)


setClass("PatientDataS4",
slots = list(name = "character", age = "numeric",
blood_pressure = "numeric", blood_sugar = "numeric"))


patient_data_s4 <- new("PatientDataS4",
                       name = c("Jay", "Rahul", "Rushi"),
                       age = c(27, 29, 28),
                       blood_pressure = c(120, 130, 115),
                       blood_sugar = c(90, 85, 100))


setMethod("show", "PatientDataS4", function(object) {
  cat("S4 Object: Patient Data\n")
  cat("Names: ", object@name, "\n")
  cat("Ages: ", object@age, "\n")
  cat("Blood Pressure: ", object@blood_pressure, "\n")
  cat("Blood Sugar: ", object@blood_sugar, "\n")
})


patient_data_s4

