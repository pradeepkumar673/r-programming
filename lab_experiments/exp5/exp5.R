# Question: Create and manipulate factor variables (e.g., women’s dataset heights, random LETTERS sample).

cat("=== EXPERIMENT 5: FACTOR CREATION & MANIPULATION ===\n\n")

data(women)
heights <- women$height

cat("--- 1. Heights from 'women' Dataset ---\n")
cat("Original Heights:\n")
print(heights)

height_categories <- cut(
  heights,
  breaks = c(57, 63, 68, 73),
  labels = c("Short", "Medium", "Tall")
)

cat("\nHeight Categories as Factor:\n")
print(height_categories)

cat("Levels of Height Factor:", levels(height_categories), "\n")
cat("Summary / Frequency Count:\n")
print(table(height_categories))
cat("\n")

set.seed(42)
letter_sample <- sample(LETTERS[1:5], size = 20, replace = TRUE)
letter_factor <- factor(letter_sample)

cat("--- 2. Random LETTERS Sample Factor ---\n")
cat("Sample Vector:\n")
print(letter_sample)
cat("\nFactor Representation:\n")
print(letter_factor)

cat("\nFactor Levels:", levels(letter_factor), "\n")
cat("Frequency Table of Letters:\n")
print(table(letter_factor))
cat("\n")

cat("--- 3. Factor Manipulation ---\n")
levels(letter_factor) <- c(levels(letter_factor), "X")
cat("Levels after adding 'X':", levels(letter_factor), "\n")

letter_factor[1] <- "X"
cat("Factor after updating first element to 'X':\n")
print(letter_factor)
