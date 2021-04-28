@allowed([
  'dev'
  'test'
  'prod'
])
@description('Name of environment to deploy - only accept dev, test, and prod')
param environment string = 'dev'

@minLength(5)
@maxLength(30)
@description('Unique name of solution you want to deploy')
param solutionName string = 'toyhr${uniqueString(resourceGroup().id)}'

@minValue(2)
@maxValue(10)
@description('Number of App Service Plan Instance to run at all time - allowed number between 2 and 10')
param appServicePlanInstanceCount int = 2

@minLength(1)
@maxLength(64)
@description('Name of solution you want to deploy')
param sqlDatabaseName string = 'employeeDB'

@description('Azure region where you want to deploy')
param location string = resourceGroup().location

@secure()
@description('SQL admin login name')
param sqlServerAdministratorLogin string

@secure()
@description('SQL admin login password')
param sqlServerAdministratorPassword string
