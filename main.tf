data "azuredevops_project" "mahmud-255" {
  name = "tf-devops"
}

module "single_stage_repo" {

  source  = "github.com/mahmud255/azterraformer"
  #version = "1.0.6"

  application_name      = var.application_name
  project_id            = data.azuredevops_project.infra.id
  repo_name             = var.application_name
  min_reviewers_enabled = false

  azure_credential = var.azure_creds
  azure_backend    = var.azure_backend
}