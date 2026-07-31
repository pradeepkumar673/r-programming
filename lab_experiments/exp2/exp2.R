# Question: Create labeled matrices (5x4, 3x3, 2x2) filled by row/column.

cat("=== EXPERIMENT 2: LABELED MATRICES ===\n\n")

mat_5x4 <- matrix(
  data = 1:20,
  nrow = 5,
  ncol = 4,
  byrow = TRUE,
  dimnames = list(
    Row_Names = paste0("Row_", 1:5),
    Col_Names = paste0("Col_", 1:4)
  )
)

cat("--- 5x4 Matrix (Filled by Row) ---\n")
print(mat_5x4)
cat("\n")

mat_3x3 <- matrix(
  data = seq(10, 90, by = 10),
  nrow = 3,
  ncol = 3,
  byrow = FALSE,
  dimnames = list(
    Row_Labels = c("R1", "R2", "R3"),
    Col_Labels = c("C1", "C2", "C3")
  )
)

cat("--- 3x3 Matrix (Filled by Column) ---\n")
print(mat_3x3)
cat("\n")

mat_2x2 <- matrix(
  data = c("A", "B", "C", "D"),
  nrow = 2,
  ncol = 2,
  byrow = TRUE,
  dimnames = list(
    Group = c("G1", "G2"),
    Variable = c("V1", "V2")
  )
)

cat("--- 2x2 Labeled Character Matrix (Filled by Row) ---\n")
print(mat_2x2)
