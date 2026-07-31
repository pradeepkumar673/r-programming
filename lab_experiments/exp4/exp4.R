# Question: Create arrays from vectors with dimension names and print specific elements.

cat("=== EXPERIMENT 4: ARRAYS FROM VECTORS & ELEMENT ACCESS ===\n\n")

v1 <- c(1, 3, 5, 7, 9, 11)
v2 <- c(2, 4, 6, 8, 10, 12)

combined_data <- c(v1, v2)

row_names <- c("R1", "R2", "R3")
col_names <- c("C1", "C2")
matrix_names <- c("Matrix_A", "Matrix_B")

arr <- array(
  data = combined_data,
  dim = c(3, 2, 2),
  dimnames = list(row_names, col_names, matrix_names)
)

cat("--- Entire 3D Array ---\n")
print(arr)
cat("\n")

cat("--- Printing Specific Elements ---\n")

cat("1. Element at [Row 2, Column 1, Matrix_A]:\n")
print(arr[2, 1, 1])
cat("\n")

cat("2. 2nd Row of Matrix_B:\n")
print(arr[2, , 2])
cat("\n")

cat("3. 1st Column across all matrices:\n")
print(arr[, 1, ])
cat("\n")

cat("4. Entire Matrix_A:\n")
print(arr[, , "Matrix_A"])
