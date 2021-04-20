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
