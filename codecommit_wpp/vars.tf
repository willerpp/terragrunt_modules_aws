
variable "aws_region" {
  description = "AWS region on which we will create the repository"
  type = string
}

variable "name" {
  description = "repository name"
  default     = ""
  type = string
}

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `environment`, `name` and `attributes`."
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'."
}

variable "description" {
  description = "repository description"
  default     = ""
  type = string
}

variable "branch" {
  description = "repository name"
  default     = "master"
  type = string
}