library(ROhdsiWebApi)

baseUrl <-"https://pioneer.hzdr.de/WebAPI"

token <- 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJiZGVtZXVsZGVyQGVpc2JtLm9yZyIsIlNlc3Npb24tSUQiOm51bGwsImV4cCI6MTcxMDIwNDE4Nn0.o2-J900Xie06n90Uikrsx8BHhctXzJKEWb5BiRmHkSQzxvWXWCrMOGfCgo_cINakYwnjkT9I0M4xdvsGjP1RFQ'
setAuthHeader(baseUrl = baseUrl, token)

# after inserting the cohorts
 
# Insert cohort definitions from ATLAS into package -----------------------
ROhdsiWebApi::insertCohortDefinitionSetInPackage(fileName = "inst/settings/CohortsToCreate.csv",
baseUrl = baseUrl ,
insertTableSql = TRUE,
insertCohortCreationR = TRUE,
generateStats = FALSE,
packageName = "PioneerRWEvsRCT")