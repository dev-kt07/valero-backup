
provider "aws" {
  region = "ap-south-1"
}



module "eks" {
  source         = "./modules/eks"
  cluster_name   = "dev-eks-cluster"
  cluster_version = "1.29"
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.private_subnets
  ssh_key_name   = "github-action"
}
