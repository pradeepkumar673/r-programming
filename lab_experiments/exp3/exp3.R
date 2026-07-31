# Question: Write an R program to create and display a 3D array with specified rows, columns, and tables.

cat("=== EXPERIMENT 3: 3D ARRAY CREATION AND DISPLAY ===\n\n")

array_data <- 1:24

row_names <- c("Row1", "Row2", "Row3")
col_names <- c("Col1", "Col2", "Col3", "Col4")
table_names <- c("Table1", "Table2")

my_3d_array <- array(
  data = array_data,
  dim = c(3, 4, 2),
  dimnames = list(row_names, col_names, table_names)
)

cat("--- Complete 3D Array ---\n")
print(my_3d_array)
cat("\n")

cat("--- Array Properties ---\n")
cat("Dimensions:", dim(my_3d_array), "\n")
cat("Dimension Names:\n")
print(dimnames(my_3d_array))
cat("\n")

cat("--- Displaying Specific Sections ---\n")
cat("Table 1 content:\n")
print(my_3d_array[, , 1])
cat("\nTable 2 content:\n")
print(my_3d_array[, , 2])
