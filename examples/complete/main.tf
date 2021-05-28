provider "aws" {
  region = "us-east-1"
}

module "test" {
  source                            = "../../"
  app-ports                         = 8080
  appmesh-resource-arn              = "arn::..."
  aws_service_discovery_service_arn = "arn::..."
  awslogs-group                     = "testgroup"
  awslogs-region                    = "eu-west-1"
  container_name                    = "test"
  egress-ignored-ports              = 5432
}
