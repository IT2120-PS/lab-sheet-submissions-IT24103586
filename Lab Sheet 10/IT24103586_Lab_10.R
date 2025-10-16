setwd("C:\\Users\\thisu\\OneDrive\\Desktop\\IT24103586")

#Observed frequencies
snack_counts <- c(A = 120, B = 95, C = 85, D = 100)
snack_counts

# Expected probabilities (equal probability = 0.25 each)
expected_prob <- rep(1/4, 4)

# Perform Chi-Square Goodness-of-Fit Test
chi_result <- chisq.test(snack_counts, p = expected_prob)

# Display test results
print(chi_result)

# Display expected frequencies (to check assumptions)
chi_result$expected

# Conclusion based on p-value
if (chi_result$p.value < 0.05) {
  cat("\nConclusion: Since p-value <", 0.05, ", reject H0.\n")
  cat("There is a significant difference in the proportion of snack choices.\n")
} else {
  cat("\nConclusion: Since p-value >=", 0.05, ", fail to reject H0.\n")
  cat("There is no significant difference — snack choices are equally likely.\n")
}
