
provider "aws" {
  region = "ap-south-1"
}



module "eks" {
  source         = "./modules/eks"
  cluster_name   = "dev-eks-cluster"
  cluster_version = "1.29"
  vpc_id         = "vpc-0219578dc5af3223e"
  subnet_ids     = [ "subnet-06053f1ddc9a129a2", "subnet-043fd9105126cf4a5" ]
  ssh_key_name   = "github-action"
}
