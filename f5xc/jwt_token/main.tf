resource "restapi_object" "token" {
  id_attribute = "metadata/name"
  path         = "/register/namespaces/system/tokens"
  data         = jsonencode({
    "metadata": {
      "name": var.f5xc_cluster_name,
      "namespace": "system"
    }
    "spec": {
      "type": "JWT",
      "site_name": var.f5xc_cluster_name
    }
  })
}
