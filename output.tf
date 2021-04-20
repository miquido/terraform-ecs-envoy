output "json_map_encoded_list" {
  description = "JSON string encoded list of container definitions for use with other terraform resources such as aws_ecs_task_definition"
  value       = module.ecs-proxy-container-definition.json_map_encoded_list
}

output "json_map_encoded" {
  description = "JSON string encoded container definitions for use with other terraform resources such as aws_ecs_task_definition"
  value       = module.ecs-proxy-container-definition.json_map_encoded
}

output "json_map_object" {
  description = "JSON map encoded container definition"
  value       = module.ecs-proxy-container-definition.json_map_object
}

output "proxy_configuration" {
  value = {
    type           = "APPMESH"
    container_name = local.appmesh_envoy_container_name
    properties = {
      ProxyIngressPort   = "15000"
      AppPorts           = var.app-ports
      EgressIgnoredIPs   = "169.254.170.2,169.254.169.254"
      IgnoredGID         = ""
      EgressIgnoredPorts = var.egress-ignored-ports
      IgnoredUID         = "1337"
      ProxyEgressPort    = "15001"
    }
  }
}

output "container_dependant" {
  value = {
    containerName = local.appmesh_envoy_container_name
    condition     = "HEALTHY"
  }
}

output "service_registries" {
  value = [
    {
      registry_arn   = var.aws_service_discovery_service_arn
      container_port = null
      container_name = var.container_name
      port           = null
    }
  ]
}
