variable "VM_NAME" {
  default = "TestVM"
}

variable "VM_ADMIN" {
  default = "azure-admin"
}

variable "LOCATION" {
  default = "West US2"
}

variable "DEFAULT_SSHKEY" {
  default = "test"
}
variable scfile{
    type = string
    default = "script.sh"
}
