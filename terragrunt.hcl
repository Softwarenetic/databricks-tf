terraform {
  source = "./modules/databricks"
}

inputs = {
  databricks_account_username = "user@email"
  databricks_account_password = "password"
  databricks_account_id       = "xxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
  region = "us-east-1"
  
  custom_tags = tomap(
    {
      "Dept"        = "data",
      "Application" = "demo"
    }
  )
  # -----------------------------------------
  # Do not change the teamid, prjid once set.
  teamid = "team1"
  prjid  = "project1"
}
