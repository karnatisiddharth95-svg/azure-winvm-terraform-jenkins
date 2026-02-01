resource_group_name      = "rg-hamsi-terraform-lab"
storage_account_prefix   = "hamsi_dev"       # ensure prefix length leaves room for suffix (<=24 total)
containers               = ["data","logs","backup"]
