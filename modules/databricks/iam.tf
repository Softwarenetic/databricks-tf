data "databricks_aws_assume_role_policy" "this" {
  external_id = var.databricks_account_id
}

data "databricks_aws_crossaccount_policy" "cross_account_iam_policy" {}


module "iam_role" {
  source = "./modules/iam_role"

  count = var.existing_role_name == null ? 1 : 0

  assume_role_policy = data.databricks_aws_assume_role_policy.this.json
  # -----------------------------------------
  # Do not change the teamid, prjid once set.
  teamid = var.teamid
  prjid  = "${var.prjid}-${local.suffix}"

  #  providers = {
  #    aws = aws.iam-management
  #  }
}

module "iam_policies" {
  source = "./modules/iam_policies"

  count = var.existing_role_name == null ? 1 : 0

  role_name     = join("", module.iam_role.*.iam_role_name)
  policy        = data.databricks_aws_crossaccount_policy.cross_account_iam_policy.json
  inline_policy = true
  # -----------------------------------------
  # Do not change the teamid, prjid once set.
  teamid = var.teamid
  prjid  = "${var.prjid}-${local.suffix}"

  #  providers = {
  #    aws = aws.iam-management
  #  }
}
