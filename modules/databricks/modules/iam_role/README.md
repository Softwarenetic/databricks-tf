## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.managed_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | Assume role policy. | `string` | `""` | no |
| <a name="input_deploy_iam_instance_profile"></a> [deploy\_iam\_instance\_profile](#input\_deploy\_iam\_instance\_profile) | feature flag to deploy this resource or not | `bool` | `true` | no |
| <a name="input_deploy_iam_role"></a> [deploy\_iam\_role](#input\_deploy\_iam\_role) | feature flag to deploy this resource or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the IAM Role. | `string` | `null` | no |
| <a name="input_existing_role_name"></a> [existing\_role\_name](#input\_existing\_role\_name) | name of existing iam role | `string` | `null` | no |
| <a name="input_external_id"></a> [external\_id](#input\_external\_id) | External ID provided by third party. | `string` | `""` | no |
| <a name="input_force_detach_policies"></a> [force\_detach\_policies](#input\_force\_detach\_policies) | Forcibly detach the policy of the role. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the IAM Role. | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path to the IAM Role. | `string` | `"/"` | no |
| <a name="input_policy_arn"></a> [policy\_arn](#input\_policy\_arn) | Attaches the policies to the IAM Role. | `list(any)` | `[]` | no |
| <a name="input_policy_identifier"></a> [policy\_identifier](#input\_policy\_identifier) | List of user ARNs or Resource Names that are granted to assume the role. e.g. arn:aws:iam::123456789012:role/SuperAdmin or ec2.amazonaws.com | `list(any)` | <pre>[<br>  "ec2.amazonaws.com"<br>]</pre> | no |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_role_type"></a> [role\_type](#input\_role\_type) | Type of role: e.g. AWS, Service | `string` | `"Service"` | no |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | The ARN of IAM Role |
| <a name="output_iam_role_id"></a> [iam\_role\_id](#output\_iam\_role\_id) | The ID of IAM Role |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | The Name of IAM Role |
| <a name="output_iam_role_unique_id"></a> [iam\_role\_unique\_id](#output\_iam\_role\_unique\_id) | The ARN unique id of iam role |
| <a name="output_instance_profile_name"></a> [instance\_profile\_name](#output\_instance\_profile\_name) | The Instance profile name |
| <a name="output_managed_policy_arn"></a> [managed\_policy\_arn](#output\_managed\_policy\_arn) | managed policy arn |
