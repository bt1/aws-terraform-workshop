module "server" {
  source = "./server"
  region       = "us-east"
  num_webs     = "${var.num_webs}"
  identity     = "${var.identity}"
  ami          = "${lookup(var.ami, "us-east")}"
  ingress_cidr = "${var.ingress_cidr}"
}

output "public_dns_us_east_2" {
  value = "${module.server-us-east.public_dns}"
}
