locals {
  appmesh_envoy_container_name  = "envoy"
  appmesh_envoy_container_image = "public.ecr.aws/appmesh/aws-appmesh-envoy:v1.17.2.0-prod"
}

module "ecs-proxy-container-definition" {
  source = "git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git?ref=tags/0.58.1"

  container_image  = local.appmesh_envoy_container_image
  container_name   = local.appmesh_envoy_container_name
  container_memory = 512
  essential        = "true"
  user             = 1337

  environment = [
    {
      name  = "APPMESH_RESOURCE_ARN"
      value = var.appmesh-resource-arn
    }
  ]

  healthcheck = {
    command     = ["CMD-SHELL", "curl -s http://localhost:9901/server_info | grep state | grep -q LIVE"]
    interval    = 5
    retries     = 3
    startPeriod = 10
    timeout     = 2
  }

  log_configuration = {
    logDriver     = "awslogs"
    secretOptions = null
    options = {
      awslogs-region        = var.awslogs-region
      awslogs-group         = var.awslogs-group
      awslogs-stream-prefix = local.appmesh_envoy_container_name
    }
  }
}
