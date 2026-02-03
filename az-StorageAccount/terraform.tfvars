resource_group_name      = "rg-hamsi-terraform-lab"
storage_account_prefix   = "hamsidev"       # ensure prefix length leaves room for suffix (<=24 total)
containers               = ["data","logs","backup"]
