variable "cluster_name" {
    type = string
    description = "this is a demo eks cluster"
    default = "dev-eks-cluster"
}
variable "cluster_version" {
  default = "1.29"
}
variable "subnet_ids" {
  type = list(string)
  description = "subnet ids for eks"
  default = [ "subnet-06053f1ddc9a129a2", "subnet-043fd9105126cf4a5" ]
}
variable "vpc_id" {
     type = string
    description = "this is a demo eks cluster"
    default = "vpc-0219578dc5af3223e"
}
variable "ssh_key_name" {
      type = string
    description = "this is a demo eks cluster"
    default = "github-action"
    
}