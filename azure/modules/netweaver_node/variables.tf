variable "az_region" {
  type    = string
  default = "westeurope"
}

variable "resource_group_name" {
  type = string
}

variable "network_subnet_id" {
  type = string
}

variable "sec_group_id" {
  type = string
}

variable "storage_account" {
  type = string
}

variable "netweaver_count" {
  type    = string
  default = "2"
}

variable "ascs_instance_number" {
  description = "ASCS instance number"
  type        = string
  default     = "00"
}

variable "ers_instance_number" {
  description = "ERS instance number"
  type        = string
  default     = "10"
}

variable "pas_instance_number" {
  description = "PAS instance number"
  type        = string
  default     = "01"
}

variable "aas_instance_number" {
  description = "AAS instance number"
  type        = string
  default     = "02"
}

variable "netweaver_nfs_share" {
  description = "URL of the NFS share where /sapmnt and /usr/sap/{sid}/SYS will be mounted. This folder must have the sapmnt and usrsapsys folders"
  type        = string
}

variable "storage_account_name" {
  description = "Azure storage account where SAP Netweaver installation files are stored"
  type        = string
}

variable "storage_account_key" {
  description = "Azure storage account access key"
  type        = string
}

variable "storage_account_path" {
  description = "Azure storage account path where SAP Netweaver installation files are stored"
  type        = string
}

variable "host_ips" {
  description = "ip addresses to set to the nodes"
  type        = list(string)
  default     = ["10.74.1.30", "10.74.1.31", "10.74.1.32", "10.74.1.33"]
}

variable "virtual_host_ips" {
  description = "virtual ip addresses to set to the nodes"
  type        = list(string)
  default     = ["10.74.1.35", "10.74.1.36", "10.74.1.37", "10.74.1.38"]
}

variable "netweaver_image_uri" {
  type    = string
  default = ""
}

variable "netweaver_public_publisher" {
  type    = string
  default = "SUSE"
}

variable "netweaver_public_offer" {
  type    = string
  default = "SLES-SAP-BYOS"
}

variable "netweaver_public_sku" {
  type    = string
  default = "15"
}

variable "netweaver_public_version" {
  type    = string
  default = "latest"
}

variable "admin_user" {
  type    = string
  default = "azadmin"
}

variable "network_domain" {
  type    = string
  default = "tf.local"
}

variable "public_key_location" {
  type = string
}

variable "private_key_location" {
  type = string
}

variable "iscsi_srv_ip" {
  description = "iscsi server address"
  type        = string
}

variable "cluster_ssh_pub" {
  description = "path for the public key needed by the cluster"
  type        = string
}

variable "cluster_ssh_key" {
  description = "path for the private key needed by the cluster"
  type        = string
}

variable "reg_code" {
  description = "If informed, register the product using SUSEConnect"
  default     = ""
}

variable "reg_email" {
  description = "Email used for the registration"
  default     = ""
}

variable "reg_additional_modules" {
  description = "Map of the modules to be registered. Module name = Regcode, when needed."
  type        = map(string)
  default     = {}
}

variable "ha_sap_deployment_repo" {
  description = "Repository url used to install HA/SAP deployment packages"
  type        = string
}

variable "devel_mode" {
  description = "Whether or not to install the HA/SAP packages from the `ha_sap_deployment_repo`"
  default     = false
}

variable "qa_mode" {
  description = "Whether or not to install the HA/SAP packages from the `ha_sap_deployment_repo`"
  default     = false
}

variable "provisioner" {
  description = "Used provisioner option. Available options: salt. Let empty to not use any provisioner"
  default     = "salt"
}

variable "background" {
  description = "Run the provisioner execution in background if set to true finishing terraform execution"
  default     = false
}

variable "monitoring_enabled" {
  description = "enable the host to be monitored by exporters, e.g node_exporter"
  default     = false
}