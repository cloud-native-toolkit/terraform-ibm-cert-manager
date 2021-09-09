module "kms_key" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-kms-key"

  region           = var.region
  ibmcloud_api_key = var.ibmcloud_api_key
  name_prefix      = var.name_prefix
  label            = "test-key"
  provision        = true
  kms_id           = module.key_protect.guid
}
