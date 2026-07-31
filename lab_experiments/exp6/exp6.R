# Question: Create an R list containing vectors, matrices, and functions; display its contents.

cat("=== EXPERIMENT 6: R LIST WITH VECTORS, MATRICES & FUNCTIONS ===\n\n")

vec <- c(10, 20, 30, 40, 50)
mat <- matrix(1:6, nrow = 2, ncol = 3, dimnames = list(c("R1", "R2"), c("C1", "C2", "C3")))
str_vec <- c("R Programming", "Data Science", "Statistics")

summary_stats <- function(x) {
  list(
    Mean = mean(x),
    Median = median(x),
    Range = range(x)
  )
}

my_list <- list(
  Numbers = vec,
  DataMatrix = mat,
  Courses = str_vec,
  CalculateStats = summary_stats
)

cat("--- Complete List Content ---\n")
print(my_list)
cat("\n")

cat("--- Structure of the List ---\n")
str(my_list)
cat("\n")

cat("--- Accessing List Elements ---\n")
cat("1. Numbers Vector (using $):\n")
print(my_list$Numbers)

cat("\n2. Data Matrix (using [[]]):\n")
print(my_list[["DataMatrix"]])

cat("\n3. Executing stored function on Numbers Vector:\n")
result <- my_list$CalculateStats(my_list$Numbers)
print(result)
