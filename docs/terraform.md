<!-- markdownlint-disable -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs-proxy-container-definition"></a> [ecs-proxy-container-definition](#module\_ecs-proxy-container-definition) | git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git?ref=tags/0.46.2 |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app-ports"></a> [app-ports](#input\_app-ports) | Coma separated app port numbers | `string` | n/a | yes |
| <a name="input_appmesh-resource-arn"></a> [appmesh-resource-arn](#input\_appmesh-resource-arn) | arn of appmesh virual node | `string` | n/a | yes |
| <a name="input_aws_service_discovery_service_arn"></a> [aws\_service\_discovery\_service\_arn](#input\_aws\_service\_discovery\_service\_arn) | arn of service discovery service | `string` | n/a | yes |
| <a name="input_awslogs-group"></a> [awslogs-group](#input\_awslogs-group) | group of CloudWatch logs | `string` | n/a | yes |
| <a name="input_awslogs-region"></a> [awslogs-region](#input\_awslogs-region) | region of CloudWatch logs | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Cloud map container name | `string` | n/a | yes |
| <a name="input_egress-ignored-ports"></a> [egress-ignored-ports](#input\_egress-ignored-ports) | Coma separated egress ignored ports | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_dependant"></a> [container\_dependant](#output\_container\_dependant) | n/a |
| <a name="output_json_map_encoded"></a> [json\_map\_encoded](#output\_json\_map\_encoded) | JSON string encoded container definitions for use with other terraform resources such as aws\_ecs\_task\_definition |
| <a name="output_json_map_encoded_list"></a> [json\_map\_encoded\_list](#output\_json\_map\_encoded\_list) | JSON string encoded list of container definitions for use with other terraform resources such as aws\_ecs\_task\_definition |
| <a name="output_json_map_object"></a> [json\_map\_object](#output\_json\_map\_object) | JSON map encoded container definition |
| <a name="output_proxy_configuration"></a> [proxy\_configuration](#output\_proxy\_configuration) | n/a |
| <a name="output_service_registries"></a> [service\_registries](#output\_service\_registries) | n/a |
<!-- markdownlint-restore -->
