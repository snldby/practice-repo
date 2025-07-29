
resource "azurerm_mssql_database" "sql_db" {
  name           = var.db_name
  server_id      = data.azurerm_mssql_server.server.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 1
  sku_name       = "S0"
  zone_redundant = false

}

data "azurerm_mssql_server" "server" {
  name                = var.server_name
  resource_group_name = var.resource_group_name
 
}