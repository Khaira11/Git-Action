variable "aws_region" {
  default = "ap-south-1" # Mumbai — closest to India
}

variable "project_name" {
  default = "my-gitops-project"
}

variable "ami_id" {
  # Amazon Linux 2023 in ap-south-1
  default = "ami-0f58b397bc5c1f2e8"
}