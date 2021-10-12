provider "aws"{
    region="us-east-1"
    access_key = "AKIAYLGMON2HJDNVGFK3"
    secret_key = "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"
}

module "ec2_instance"{
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-09e67e426f25ce0d7 "
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = { 
    Terraform   = "true"
    Environment = "dev"
  }
}
