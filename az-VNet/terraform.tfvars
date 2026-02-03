resource_group_name="Your_existing_RG"
location="Your_RG_lLocation"

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
