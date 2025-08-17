#root


module "vpc" {
    source = "./vpc"
}

module "ec2" {
    source = "./web"
    pb_sn   = module.vpc.pb_sn
    sg1 = module.vpc.sg1
  
}