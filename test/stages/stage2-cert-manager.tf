module "cert-manager" {
  source = "./module"

  resource_group_name = module.resource_group.name
  region = var.region
  ibmcloud_api_key = var.ibmcloud_api_key
  provision = true
  private_endpoint = false
  kms_enabled = true
  kms_id      = module.kms_key.kms_id
  kms_key_crn = module.kms_key.crn
}
