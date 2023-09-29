locals {
  appmesh_envoy_container_name  = "envoy"
  appmesh_envoy_container_image = "public.ecr.aws/appmesh/aws-appmesh-envoy:v1.21.0.0-prod"
}

module "ecs-proxy-container-definition" {
  source = "git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git?ref=0.61.0"

  container_image  = local.appmesh_envoy_container_image
  container_name   = local.appmesh_envoy_container_name
  container_memory = var.container_memory
  ulimits          = var.ulimits
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
    startPeriod = var.health_check_start_period
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
