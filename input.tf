#variable for region
variable region {
    type = string
    default = "us-west-2"
    description = "target region for creation of networ"

}

#variable for vpc_cidr
variable vpc_cidr {
    type = string
    default = "192.168.0.0/16"
    description = "cidr range"
}

#variable for AZs
variable availability_zone {
    type = list(string)
    default = ["a", "b", "c"]
    description = " list of AZs"

}

variable subnet_tags {
    type = list(string)
    default = ["web","app","db","mgmt"]
    description = "Subnet tags"
}
