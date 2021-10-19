variable "appmesh-resource-arn" {
  type        = string
  description = "arn of appmesh virual node"
}

variable "awslogs-region" {
  type        = string
  description = "region of CloudWatch logs"
}

variable "awslogs-group" {
  type        = string
  description = "group of CloudWatch logs"
}

variable "app-ports" {
  type        = string
  description = "Coma separated app port numbers"
}

variable "egress-ignored-ports" {
  type        = string
  description = "Coma separated egress ignored ports"
}

variable "container_name" {
  type        = string
  description = "Cloud map container name"

}

variable "aws_service_discovery_service_arn" {
  type        = string
  description = "arn of service discovery service"

}

variable "container_memory" {
  type        = number
  description = "The amount of memory (in MiB) to allow the container to use. This is a hard limit, if the container attempts to exceed the container_memory, the container is killed. This field is optional for Fargate launch type and the total amount of container_memory of all containers in a task will need to be lower than the task memory value"
  default     = null
}

variable "ulimits" {
  type = list(object({
    name      = string
    hardLimit = number
    softLimit = number
  }))
  description = "Container ulimit settings. This is a list of maps, where each map should contain \"name\", \"hardLimit\" and \"softLimit\""
  default     = null
}