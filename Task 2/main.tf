module "compute" {
  source = "./terraform-module/compute"
}

module "network" {
  source = "./terraform-module/network"
}

module "cloudrun" {
  source = "./terraform-module/cloud_run"
}