output "token" {
  value = { 
    content         = regex("content:(\\S+)", restapi_object.token.api_data.spec)[0]
    site_name       = regex("site_name:(\\S+)", restapi_object.token.api_data.spec)[0]
    token_algorithm = jsondecode(base64decode(split(".", regex("content:(\\S+)", restapi_object.token.api_data.spec)[0])[0]))
    #    token_map       = jsondecode(base64decode(split(".", regex("content:(\\S+)", restapi_object.token.api_data.spec)[0])[1]))
  }
}
