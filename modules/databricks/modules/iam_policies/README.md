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
| [aws_iam_policy.managed_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy.inline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the policy | `string` | `null` | no |
| <a name="input_inline_policy"></a> [inline\_policy](#input\_inline\_policy) | Is it an Inline Policy | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the policy | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the policy in IAM | `string` | `"/"` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The policy json or file | `string` | `null` | no |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Existing iam role name | `string` | `null` | no |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inline_policy"></a> [inline\_policy](#output\_inline\_policy) | The inline policy document |
| <a name="output_inline_policy_id"></a> [inline\_policy\_id](#output\_inline\_policy\_id) | The policy's ID |
| <a name="output_inline_policy_name"></a> [inline\_policy\_name](#output\_inline\_policy\_name) | The name of the inline policy |
| <a name="output_inline_policy_role"></a> [inline\_policy\_role](#output\_inline\_policy\_role) | The role name to which this policy is attached |
| <a name="output_managed_policy"></a> [managed\_policy](#output\_managed\_policy) | The managed policy document |
| <a name="output_managed_policy_arn"></a> [managed\_policy\_arn](#output\_managed\_policy\_arn) | The ARN assigned by AWS to this policy |
| <a name="output_managed_policy_description"></a> [managed\_policy\_description](#output\_managed\_policy\_description) | The description of the policy |
| <a name="output_managed_policy_id"></a> [managed\_policy\_id](#output\_managed\_policy\_id) | The policy's ID |
| <a name="output_managed_policy_name"></a> [managed\_policy\_name](#output\_managed\_policy\_name) | The name of the managed policy |
| <a name="output_managed_policy_path"></a> [managed\_policy\_path](#output\_managed\_policy\_path) | The path of the policy in IAM |
