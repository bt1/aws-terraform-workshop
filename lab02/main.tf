module "server" {
  source = "./server"
  region       = "${var.region}"
  num_webs     = "${var.num_webs}"
  identity     = "${var.identity}"
  ami          = "${lookup(var.ami, var.region)}"
  ingress_cidr = "${var.ingress_cidr}"
}

output "public_dns_us_east_2" {
  value = "${module.server-us-east-2.public_dns}"
}
