module "Node" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Node-server"  
  
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "instance_type"  
  key_name               = "node"
  monitoring             = true
  vpc_security_group_ids = [module.node-app.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
    
   
