variable "csirtmu_tiny_disk" {
  type        = string
  description = "Disk size of csirtmu tiny flavor in GB"
  default     = "20"
}

variable "csirtmu_tiny_ram" {
  type        = string
  description = "RAM size of csirtmu tiny flavor in MB"
  default     = "2048"
}

variable "deploy_flavors" {
  type        = bool
  description = "If flavors should be created in OpenStack"
  default     = false
}

variable "deploy_kubernetes_cluster" {
  type        = bool
  description = "If KYPO kubernetes cluster for head services should be deployed"
  default     = true
}

variable "dns_nameservers" {
  type        = list(string)
  description = "List of DNS name servers used for instances"
  default     = ["1.1.1.1", "1.0.0.1"]
}

variable "external_network_name" {
  type        = string
  description = "External network name used for floating IP allocation"
}

variable "k3s_version" {
  type        = string
  description = "Version of k3s distribution"
  default     = "v1.25.3+k3s1"
}

variable "kypo_kubernetes_cluster_flavor_name" {
  type        = string
  description = "OpenStack flavor used by KYPO kubernetes cluster instance"
}

variable "kypo_proxy_flavor_name" {
  type        = string
  description = "OpenStack flavor used by KYPO proxy jump instance"
}

variable "standard_small_disk" {
  type        = string
  description = "Disk size of standard small flavor in GB"
  default     = "80"
}

variable "standard_small_ram" {
  type        = string
  description = "RAM size of standard small flavor in MB"
  default     = "2048"
}

variable "standard_medium_disk" {
  type        = string
  description = "Disk size of standard medium flavor in GB"
  default     = "80"
}

variable "standard_medium_ram" {
  type        = string
  description = "RAM size of standard medium flavor in MB"
  default     = "4096"
}

variable "standard_large_disk" {
  type        = string
  description = "Disk size of standard large flavor in GB"
  default     = "80"
}

variable "standard_large_ram" {
  type        = string
  description = "RAM size of standard large flavor in MB"
  default     = "16384"
}
