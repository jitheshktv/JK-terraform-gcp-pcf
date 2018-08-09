variable "project" {
  type = "string"
}

variable "env_name" {
  type = "string"
}

variable "region" {
  type = "string"
}

variable "buckets_location" {
  type    = "string"
  default = "US"
}

variable "management_1_cidr" {
  type        = "string"
  description = "cidr for management subnet on zone 1"
  default     = "10.119.51.128/28"
}

variable "management_2_cidr" {
  type        = "string"
  description = "cidr for management subnet on zone 2"
  default     = "10.119.51.144/28"
}

variable "management_3_cidr" {
  type        = "string"
  description = "cidr for management subnet on zone 3"
  default     = "10.119.51.160/28"
}

variable "pas_1_cidr" {
  type        = "string"
  description = "cidr for pas subnet on zone 1"
  default     = "10.119.50.0/25"
}

variable "pas_2_cidr" {
  type        = "string"
  description = "cidr for pas subnet on zone 2"
  default     = "10.119.50.128/25"
}

variable "pas_3_cidr" {
  type        = "string"
  description = "cidr for pas subnet on zone 3"
  default     = "10.119.51.0/25"
}

variable "services_1_cidr" {
  type        = "string"
  description = "cidr for services subnet on zone 1"
  default     = "10.119.51.176/28"
}

variable "services_2_cidr" {
  type        = "string"
  description = "cidr for services subnet on zone 2"
  default     = "10.119.51.192/28"
}

variable "services_3_cidr" {
  type        = "string"
  description = "cidr for services subnet on zone 3"
  default     = "10.119.51.208/28"
}

variable "zones" {
  type = "list"
}

variable "opsman_image_url" {
  type        = "string"
  description = "Location of ops manager image on google cloud storage"
}

variable "optional_opsman_image_url" {
  type        = "string"
  description = "Location of ops manager image (to be used for optional extra instance) on google cloud storage"
  default     = ""
}

variable "opsman_machine_type" {
  type    = "string"
  default = "n1-standard-2"
}

variable "service_account_key" {
  type = "string"
}

variable "dns_suffix" {
  type = "string"
}

variable "ssl_cert" {
  type        = "string"
  description = "The contents of an SSL certificate to be used by the LB, optional if `ssl_ca_cert` is provided"
  default     = ""
}

variable "ssl_private_key" {
  type        = "string"
  description = "The contents of an SSL private key to be used by the LB, optional if `ssl_ca_cert` is provided"
  default     = ""
}

variable "ssl_ca_cert" {
  type        = "string"
  description = "The contents of a CA public key to be used to sign the generated LB certificate, optional if `ssl_cert` is provided"
  default     = ""
}

variable "ssl_ca_private_key" {
  type        = "string"
  description = "the contents of a CA private key to be used to sign the generated LB certificate, optional if `ssl_cert` is provided"
  default     = ""
}

variable "create_iam_service_account_members" {
  description = "If set to true, create an IAM Service Account project roles"
  default     = true
}

variable "external_database" {
  description = "standups up a cloud sql database instance for the ops manager and PAS"
  default     = false
}

variable "internetless" {
  description = "When set to true, all traffic going outside the 10.* network is denied."
  default     = true
}

/******************
 * OpsMan Options *
 ******************/

variable "opsman_storage_bucket_count" {
  type        = "string"
  description = "Optional configuration of a Google Storage Bucket for BOSH's blobstore"
  default     = "1"
}

variable "pas_sql_db_host" {
  type        = "string"
  description = "The host the user can connect from."
  default     = ""
}

variable "opsman_sql_db_host" {
  type        = "string"
  description = "The host the user can connect from."
  default     = ""
}

/*****************************
 * Isolation Segment Options *
 *****************************/

variable "isolation_segment" {
  description = "create the required infrastructure to deploy isolation segment"
  default     = false
}

variable "iso_seg_ssl_cert" {
  type        = "string"
  description = "the contents of an SSL certificate to be used by the LB, optional if `iso_seg_ssl_ca_cert` is provided"
  default     = ""
}

variable "iso_seg_ssl_private_key" {
  type        = "string"
  description = "The contents of an SSL private key to be used by the LB, optional if `iso_seg_ssl_ca_cert` is provided"
  default     = ""
}

variable "iso_seg_ssl_ca_cert" {
  type        = "string"
  description = "The contents of a CA public key to be used to sign the generated iso seg LB certificate, optional if `iso_seg_ssl_cert` is provided"
  default     = ""
}

variable "iso_seg_ssl_ca_private_key" {
  type        = "string"
  description = "The contents of a CA private key to be used to sign the generated iso seg LB certificate, optional if `iso_seg_ssl_cert` is provided"
  default     = ""
}

/********************************
 * Google Cloud Storage Options *
 ********************************/

variable "create_gcs_buckets" {
  description = "Create Google Storage Buckets for Elastic Runtime Cloud Controller's file storage"
  default     = true
}

variable "create_blobstore_service_account_key" {
  description = "Create a scoped service account key for gcs storage access"
  default     = true
}

/*****************************
 * PKS Options *
 *****************************/

variable "pks" {
  description = "Create the required infrastructure to deploy pks."
  default     = false
}

variable "pks_cidr" {
  type        = "string"
  description = "cidr for pks subnet"
  default     = "10.0.10.0/24"
}

variable "pks_services_cidr" {
  type        = "string"
  description = "cidr for pks services subnet"
  default     = "10.0.11.0/24"
}
