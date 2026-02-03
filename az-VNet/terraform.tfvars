resource_group_name="rg-hamsi-terraform-lab"
location="West Europe"

vnet_name="lab-vnet-01"
address_space=["10.20.0.0/16"]

create_subnet=true
subnet_name = "lab-subnet-01"
subnet_prefixes = ["10.20.1.0/24"]

tags = {
    environment = "lab"
    owner   =   "Maheswara"
    managedBy   = "terraform"
}
