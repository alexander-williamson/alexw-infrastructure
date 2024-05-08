module "application_github_deployer" {
  source = "./modules/iam_user"

  user_name = "github-application-user"
}

output "access_key" {
  value = module.application_github_deployer.access_key
}

output "secret_access_key" {
  value     = module.application_github_deployer.secret_access_key
  sensitive = true
}
