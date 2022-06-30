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

variable "linux_network_interface_id" {
    default = ""
}

variable "linux_network_interface_name" {
    default = ""
}

variable "linux_pip_id" {
    default = ""
}

variable "linux_name" {
    default = ""
}

variable "loadbalancer-pubip" {
    default = "loadbalancer-pubip-2696"
}

variable "loadbalancer" {
    type = map(string) 
    default = {
        name    = "loadbalancer-2696"
        frontend_ip_configuration = "pubip-2696"
    }
}

variable "backend_address_pool" {
    default = "backendaddresspool-2696"
}

variable "loadbalancer_pool_association" {
    default = "loadbalancer-pool-association-2696"
}

variable "loadbalancer_rule" {
    type = map(string) 
    default = {
        name = "loadbalancer-rule-2696"
        protocol = "Tcp"
        frontend_port = 2696
        backend_port = 2696
        frontend_ip_configuration_name = "PublicIPAddress"
    }
}

variable "loadbalancer_probe" {
    type = map(string)
    default = {
        name                = "loadbalancer-probe-2696"
        protocol            = "Tcp"
        port                = 80
        interval_in_seconds = 5
        number_of_probes    = 2
    }
}