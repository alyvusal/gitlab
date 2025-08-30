terraform {
  required_version = ">= 1.5.0"
  backend "http" {
  }
}

provider "null" {}

module "test" {
  source      = "../../modules/local"
  environment = "dev"
}

output "module" {
  value = module.test
}
