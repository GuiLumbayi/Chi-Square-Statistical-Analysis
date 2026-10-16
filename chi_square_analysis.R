#================================================================================
    ##Portfolio Project: Categorical Data Analysis Using Chi-Square Tests##
##Concepts: Chi-Square Test of Independence, Goodness-of-Fit, Contigency Tables##
#================================================================================

      
      #1.Chi-Square Test of Independence (Gender vs. Political Affiliation)
#------------------------------------------------------------------------------

# Construct a 2x3 contingency table mapping counts across categorical intersections
Gender.vs.PoliticalAff <- as.table(
  matrix(
    c(120, 90, 40, 110, 95, 45),   # Raw data counts filled in order row by row
    nrow = 2,                     # Defines row for biological sex category
    byrow = TRUE,                 # Restructures data horizontally by row
    dimnames = list(
      Gender       = c("Male", "Female"),
      PoliticalAff = c("Republican", "Democrat", "Independent")
    )
  )
)

# Explicitly prints the structured contingency table to view the raw distributions
Gender.vs.PoliticalAff


#Verifying expected cell counts 
#ensuring our data meets the Chi-Square assumption that all expected values > 5
chisq.test(Gender.vs.PoliticalAff)$expected


#Running the Chi-Square Test to evaluate gender and political affiliation
#Utilize the p-val for interpretation
chisq.test(Gender.vs.PoliticalAff)



     #2.Chi-Square Test of Independence (Education Level vs. Evolution Beliefs)
#---------------------------------------------------------------------------------
# Construct a 3x4 contingency table mapping frequencies across categorical attributes
Belief.vs.EduLevel <- as.table(
  matrix(
    c(80, 103, 197, 133, 94, 98, 121, 48, 59, 63, 13, 21), # Raw survey counts in order 
    nrow = 3,                                              # Defines rows for belief categories
    byrow = TRUE,                                          # Restructures data horizontally by row
    dimnames = list(
      Belief    = c("Believe", "Do Not Believe", "No Opinion"),
      EduLevel  = c("HS or Less", "Some College", "College Grad", "Post Grad")
    )
  )
)

# Explicitly prints the structured contingency table to view the raw distributions
Belief.vs.EduLevel

#Verifying expected cell counts 
#ensuring our data meets the Chi-Square assumption that all expected values > 5
chisq.test(Belief.vs.EduLevel)$expected

# Run the Chi-Square Test to evaluate education and belief associations
#Utilize the p-val for interpretation
chisq.test(Belief.vs.EduLevel)



           #3.Chi-Square Goodness-of-Fit Test (M&M Color Distribution)
#------------------------------------------------------------------------------
# Create a map of observed counts for each M&M color category
MM <- as.table(
  matrix(
    c(110, 47, 52, 103, 58, 50),   # observed sample counts
    nrow = 1,                     # Formatted as a single data dimension
    byrow = TRUE,                 # populates values horizontally
    dimnames = list(
      Data = c("Value"),
      Colors = c("Blue", "Brown", "Green", "Orange", "Red", "Yellow")
    )
  )
)

# Explicitly print the category frequency to inspect sample counts
MM

#Verifying expected cell counts 
#ensuring our data meets the Chi-Square assumption that all expected values > 5
chisq.test(MM)$expected

#Running a Chi-Square Test to evaluate if color probabilities differ significantly
#Utilize the p-val for interpretation
chisq.test(MM)

