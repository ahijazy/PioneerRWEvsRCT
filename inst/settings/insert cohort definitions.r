library(ROhdsiWebApi)

baseUrl <-"https://pioneer.hzdr.de/WebAPI"

token <- 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhaGlqYXp5QGVpc2JtLm9yZyIsIlNlc3Npb24tSUQiOm51bGwsImV4cCI6MTcwNzk1OTc3OX0.TsdRnInAvCseWJE8Uj4Gswm1XozsuMSAVVCY5aQvpfTqWYYsKeR1rPF0pMrTvWKRwaAbYH8WRI2wSoFyf73bgg'
setAuthHeader(baseUrl = baseUrl, token)

# after inserting the cohorts
 
# Insert cohort definitions from ATLAS into package -----------------------
ROhdsiWebApi::insertCohortDefinitionSetInPackage(fileName = "inst/settings/CohortsToCreate.csv",
baseUrl = baseUrl ,
insertTableSql = TRUE,
insertCohortCreationR = TRUE,
generateStats = FALSE,
packageName = "PioneerRWEvsRCT")