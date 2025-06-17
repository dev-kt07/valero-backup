variable "cluster_name" {
  type        = string
  description = "this is a demo eks cluster"
  default     = "dev-eks-cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "subnet ids for eks"
  default     = ["subnet-06053f1ddc9a129a2", "subnet-043fd9105126cf4a5"]
}
variable "vpc_id" {
  type        = string
  description = "this is a demo eks cluster"
  default     = "vpc-0219578dc5af3223e"
}
variable "ssh_key_name" {
  type        = string
  description = "this is a demo eks cluster"
  default     = "github-action"

}
variable "desired_size" {
  type    = number
  default = 2
}
variable "max_size" {
  type    = number
  default = 2
}
variable "min_size" {
  type    = number
  default = 1
}
variable "instance_types" {
  type    = list(string)
  default = ["t2.medium"]
}
variable "kubernetes_version" {
  type    = string
  default = "1.29"
}
