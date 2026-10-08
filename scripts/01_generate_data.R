# script to generate marketing_data.csv file
# to be used as input for 02_marketing_analysis.Rmd

# Create a matrix of data values
Sales <- matrix(c(
  101, 2.5, 15.2, "North",
  102, 3.1, 18.5, "North",
  103, 1.8, 11.0, "South",
  104, 4.5, 25.4, "East",
  105, 5.0, 27.8, "West",
  106, 2.1, 13.4, "South",
  107, 3.8, 21.0, "East",
  108, 4.2, 23.5, "West"), 
  nrow=8, ncol=4, byrow=TRUE)

# link the column names to each column of the matrix
colnames(Sales) <- c("Store_ID", "Ad_Budget_1k", "Sales_1k", "Region")

# Save the matrix outside of the .R script for use as input into the 02_marketing_analysis.Rmd file.
write.csv(Sales, file = "data/marketing_data.csv", row.names = FALSE)

# Notice that the default working directory of any R script, regardless of where it has been saved,
# is the project directory. Therefore, to write to a file to a sub-directory, we need to
# include the whole path of that file from the main Project directory. 

