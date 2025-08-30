terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.4"
    }
  }
}

variable "environment" {
  type    = string
  default = ""
}

resource "null_resource" "example" {
  triggers = {
    always_run = timestamp() # forces recreation on each apply
  }

  provisioner "local-exec" {
    command = "echo Generated at $(date) with ID: ${uuid()} at environment ${var.environment}. Module path: ${path.module}, root path: ${path.root}"
  }
}

output "env" {
  value = {
    env         = var.environment
    id          = uuid()
    timestamp   = timestamp()
    module_path = path.module
    root_path   = path.root
  }
}

# Trigger node: 1
