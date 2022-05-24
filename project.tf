resource "mongodbatlas_project" "project" {
  name = var.project_name
  org_id = var.org_id
}

output "project_name" {
  value = mongodbatlas_project.project.name
}

variable project_name {
  type = string
  default = "teste_terraform"
}

variable org_id {
  type = string
  nullable = false 
} 
