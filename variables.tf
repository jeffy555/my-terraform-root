variable "owner" {
  type = string
}

variable "cost_center" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "region" {
  type = string
}

variable "storage_account_sku" {
  type = string
}

variable "replication" {
  type = string
}

variable "access_tier" {
  type = string
}

variable "https_only" {
  type = bool
}

variable "min_tls_version" {
  type = string
}

variable "allow_blob_public_access" {
  type = bool
}

variable "subscription_id" {
  type = string
}
variable "service_plan_name" {
  type = string
}

variable "app_service_name" {
  type = string
}

variable "service_plan_sku" {
  type = string
}

variable "runtime" {
  type = string
}

variable "app_minimum_tls_version" {
  type = string
}

variable "app_region" {
  type = string
}

variable "app_service_worker_count" {
  type = number
}
