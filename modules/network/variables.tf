locals {
  common_tags = {
    Project = "Automation Project – Assignment 1" 
	Name = "Manpreet kaur"
	ExpirationDate = "2022-06-30" 
	Environment = "Lab" 
  }
}

variable "resource_group"{
    default = ""
}

variable "location" {
    default = ""
}

variable "vnet" {
  default = "virtual-network-2696"
}

variable "vnet_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet" {
  default = "subnet-2696"
}

variable "subnet_space" {
  default = ["10.0.1.0/24"]
}