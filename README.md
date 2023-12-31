<!-- This file was automatically generated by the `build-harness`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->
[![Miquido][logo]](https://www.miquido.com/)

# terraform-ecs-envoy
Provide app mesh envoy container definition for ECS
---
**Terraform Module**
## Usage

```hcl
  module "ecs-alb-task-service-envoy-proxy" {
    source                            = "git::ssh://git@gitlab.com/miquido/terraform/terraform-ecs-envoy.git"
    appmesh-resource-arn              = ...
    awslogs-group                     = ...
    awslogs-region                    = ...
    app-ports                         = ...
    egress-ignored-ports              = ...
    container_name                    = ...
    aws_service_discovery_service_arn = ...
}
```
<!-- markdownlint-disable -->
## Makefile Targets
```text
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint Terraform code

```
<!-- markdownlint-restore -->
<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs-proxy-container-definition"></a> [ecs-proxy-container-definition](#module\_ecs-proxy-container-definition) | git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git | 0.58.1 |

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
| <a name="input_container_memory"></a> [container\_memory](#input\_container\_memory) | The amount of memory (in MiB) to allow the container to use. This is a hard limit, if the container attempts to exceed the container\_memory, the container is killed. This field is optional for Fargate launch type and the total amount of container\_memory of all containers in a task will need to be lower than the task memory value | `number` | `null` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Cloud map container name | `string` | n/a | yes |
| <a name="input_egress-ignored-ports"></a> [egress-ignored-ports](#input\_egress-ignored-ports) | Coma separated egress ignored ports | `string` | n/a | yes |
| <a name="input_ulimits"></a> [ulimits](#input\_ulimits) | Container ulimit settings. This is a list of maps, where each map should contain "name", "hardLimit" and "softLimit" | <pre>list(object({<br>    name      = string<br>    hardLimit = number<br>    softLimit = number<br>  }))</pre> | `null` | no |

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


## Developing

1. Make changes in terraform files

2. Regenerate documentation

    ```bash
    bash <(git archive --remote=git@gitlab.com:miquido/terraform/terraform-readme-update.git master update.sh | tar -xO)
    ```

3. Run lint

    ```
    make lint
    ```

## Copyright

Copyright © 2017-2022 [Miquido](https://miquido.com)



### Contributors

|  [![Marek Mościchowski][marekmoscichowski_avatar]][marekmoscichowski_homepage]<br/>[Marek Mościchowski][marekmoscichowski_homepage] |
|---|

  [marekmoscichowski_homepage]: https://github.com/marekmoscichowski
  [marekmoscichowski_avatar]: https://github.com/marekmoscichowski.png?size=150



  [logo]: https://www.miquido.com/img/logos/logo__miquido.svg
  [website]: https://www.miquido.com/
  [gitlab]: https://gitlab.com/miquido
  [github]: https://github.com/miquido
  [bitbucket]: https://bitbucket.org/miquido

