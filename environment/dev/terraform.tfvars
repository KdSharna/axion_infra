name_rg = {
  rg1 = {
    name       = "tanduri"
    location   = "South Africa North"
    managed_by = "terraform"
    tags = {
      cost_center = "dev"
    }
  }
}


cluster_ks = {
  main = {
    name                = "k8s_cluster"
    location            = "South Africa North"
    resource_group_name = "tanduri"
    dns_prefix          = "aks0101"

    network_plugin = "azure"
    network_policy = "azure"
  }
}

default_node_pool = {
  node_pool1 = {
    name       = "tanduri"
    node_count = 2
    # vm_size    = "Standard_D2s_v3"
    vm_size = "Standard_D2s_v5"
  }
}

azure_acr = {
  main = {
    name                = "akscon001"
    resource_group_name = "tanduri"
    location            = "South Africa North"
    sku                 = "Premium"
    admin_enabled       = false
  }
}

georeplications = {
  georeplica1 = {
    location                = "North Europe"
    zone_redundancy_enabled = true
  }
  georeplica2 = {
    location                = "North Europe"
    zone_redundancy_enabled = false
  }
}

# serversql = {
#   server1 = {
#     name                         = "mysqlservertittu01234"
#     resource_group_name          = "tanduri"
#     location                     = "South Africa North"
#     version                      = "12.0"
#     administrator_login          = "Tattu01!@"
#     administrator_login_password = "Tattu!12345"
#     minimum_tls_version          = "1.2"

#   }
# }

# databasesql = {
#   database1 = {
#     name         = "mysqldatabased"
#     sql_name     = "mysqlservertittu01234"
#     collation    = "SQL_Latin1_General_CP1_CI_AS"
#     license_type = "LicenseIncluded"
#     max_size_gb  = 2
#     sku_name     = "S0"
#     enclave_type = "VBS"
#     rg_name      = "tanduri"
#   }
# }
