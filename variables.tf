variable "application_name" {
  type = string
}
variable "azure_creds" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
}

variable "azure_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
}
 