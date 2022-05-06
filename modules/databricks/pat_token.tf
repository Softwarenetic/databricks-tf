resource "databricks_token" "pat" {
  provider = databricks.created_workspace
  #  provider = databricks.mws

  comment          = "Terraform managed: ${var.teamid}-${var.prjid}"
  lifetime_seconds = 86400
}
