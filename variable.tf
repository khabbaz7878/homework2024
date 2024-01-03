# Create list of storage account names
variable "first_name" {
  default = "sami"
}

variable "last_name" {
  default = "islam" 
}
variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}
variable "storage_account_names" {
 default = [
    "A.[firstnamemcitlastname1]",
    "B.[firstnamemcitlastname2]",
    "C.[firstnamemcitlastname3]",
    "D.[firstnamemcitlastname4]",
    "E.[firstnamemcitlastname5]"
 ]
}
