module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "daphneyngongang@gmail.com"
    AccountName               = "SandboxAFT"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "daphneyngongang@gmail.com"
    SSOUserFirstName          = "SandboxAFT"
    SSOUserLastName           = "AFT-Request"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Rodrigue NGONGANG"
    change_reason       = "Learn AWS Control Tower Account Factory (AWS AFT) for Terraform."
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
