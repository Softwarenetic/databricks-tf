## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | 0.5.5 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.1 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | 0.5.5 |
| <a name="provider_databricks.created_workspace"></a> [databricks.created\_workspace](#provider\_databricks.created\_workspace) | 0.5.5 |
| <a name="provider_databricks.mws"></a> [databricks.mws](#provider\_databricks.mws) | 0.5.5 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.1 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.7 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_policies"></a> [iam\_policies](#module\_iam\_policies) | ./modules/iam_policies |  |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | ./modules/iam_role |  |
| <a name="module_s3"></a> [s3](#module\_s3) | ./modules/s3 |  |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc |  |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket_policy.root_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [databricks_mws_credentials.this](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/resources/mws_credentials) | resource |
| [databricks_mws_networks.this](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/resources/mws_networks) | resource |
| [databricks_mws_storage_configurations.this](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/resources/mws_storage_configurations) | resource |
| [databricks_mws_workspaces.this](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/resources/mws_workspaces) | resource |
| [databricks_token.pat](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/resources/token) | resource |
| [random_string.naming](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [time_sleep.wait](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [databricks_aws_assume_role_policy.this](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/data-sources/aws_assume_role_policy) | data source |
| [databricks_aws_bucket_policy.this](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/data-sources/aws_bucket_policy) | data source |
| [databricks_aws_crossaccount_policy.cross_account_iam_policy](https://registry.terraform.io/providers/databrickslabs/databricks/0.5.5/docs/data-sources/aws_crossaccount_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The CIDR block for the VPC | `string` | `"10.4.0.0/16"` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | Extra custom tags | `any` | `null` | no |
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | External ID provided by third party. | `string` | n/a | yes |
| <a name="input_databricks_account_password"></a> [databricks\_account\_password](#input\_databricks\_account\_password) | databricks account password | `string` | n/a | yes |
| <a name="input_databricks_account_username"></a> [databricks\_account\_username](#input\_databricks\_account\_username) | databricks account username | `string` | n/a | yes |
| <a name="input_databricks_hostname"></a> [databricks\_hostname](#input\_databricks\_hostname) | databricks hostname | `string` | `"https://accounts.cloud.databricks.com"` | no |
| <a name="input_existing_role_name"></a> [existing\_role\_name](#input\_existing\_role\_name) | If you want to use existing role name, else a new role will be created | `string` | `null` | no |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_profile"></a> [profile](#input\_profile) | profile to use for resource creation | `string` | `"default"` | no |
| <a name="input_profile_for_iam"></a> [profile\_for\_iam](#input\_profile\_for\_iam) | profile to use for IAM | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region to deploy resources | `string` | `"us-east-1"` | no |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_databricks_credentials_id"></a> [databricks\_credentials\_id](#output\_databricks\_credentials\_id) | databricks credentials id |
| <a name="output_databricks_deployment_name"></a> [databricks\_deployment\_name](#output\_databricks\_deployment\_name) | databricks deployment name |
| <a name="output_databricks_host"></a> [databricks\_host](#output\_databricks\_host) | databricks hostname |
| <a name="output_databricks_mws_credentials_id"></a> [databricks\_mws\_credentials\_id](#output\_databricks\_mws\_credentials\_id) | databricks mws credentials id |
| <a name="output_databricks_mws_network_id"></a> [databricks\_mws\_network\_id](#output\_databricks\_mws\_network\_id) | databricks mws network id |
| <a name="output_databricks_mws_storage_bucket_name"></a> [databricks\_mws\_storage\_bucket\_name](#output\_databricks\_mws\_storage\_bucket\_name) | databricks mws storage bucket name |
| <a name="output_databricks_mws_storage_id"></a> [databricks\_mws\_storage\_id](#output\_databricks\_mws\_storage\_id) | databricks mws storage id |
| <a name="output_databricks_token"></a> [databricks\_token](#output\_databricks\_token) | Value of the newly created token |
| <a name="output_databricks_token_lifetime_hours"></a> [databricks\_token\_lifetime\_hours](#output\_databricks\_token\_lifetime\_hours) | Token validity |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | iam role arn |
| <a name="output_inline_policy_id"></a> [inline\_policy\_id](#output\_inline\_policy\_id) | inline policy id |
| <a name="output_nonsensitive_databricks_token"></a> [nonsensitive\_databricks\_token](#output\_nonsensitive\_databricks\_token) | Value of the newly created token (nonsensitive) |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | s3 bucket arn |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | s3 bucket id |
| <a name="output_s3_bucket_name"></a> [s3\_bucket\_name](#output\_s3\_bucket\_name) | s3 bucket name |
| <a name="output_storage_configuration_id"></a> [storage\_configuration\_id](#output\_storage\_configuration\_id) | databricks storage configuration id |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | vpc id |
| <a name="output_vpc_route_table_ids"></a> [vpc\_route\_table\_ids](#output\_vpc\_route\_table\_ids) | list of VPC route tables IDs |
| <a name="output_vpc_security_group_id"></a> [vpc\_security\_group\_id](#output\_vpc\_security\_group\_id) | list of VPC security group ID |
| <a name="output_vpc_subnet_ids"></a> [vpc\_subnet\_ids](#output\_vpc\_subnet\_ids) | list of subnet ids within VPC |
| <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url) | databricks workspace url |
