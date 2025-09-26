library(ROhdsiWebApi)

baseUrl <-"https://pioneer.hzdr.de/WebAPI"

token <- 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhaGlqYXp5QGVpc2JtLm9yZyIsIlNlc3Npb24tSUQiOm51bGwsImV4cCI6MTc1ODk0NzU3Nn0.jOgU0Cv4dCxAKZsVDDI_pbWDqlVQj-_dJwza190i5wVj3y8TlTJGR4rR_G8GHiKkQwWKeWigtCJeqCfSG5Tabg'
setAuthHeader(baseUrl = baseUrl, token)

# after inserting the cohorts
 
# Insert cohort definitions from ATLAS into package -----------------------
ROhdsiWebApi::insertCohortDefinitionSetInPackage(fileName = "inst/settings/CohortsToCreate.csv",
baseUrl = baseUrl ,
insertTableSql = TRUE,
insertCohortCreationR = TRUE,
generateStats = FALSE,
packageName = "PioneerRWEvsRCT")