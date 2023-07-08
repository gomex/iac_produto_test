module "produto" {
  source        = "git@github.com:gomex/iac_module_server.git?ref=v1.0.0"
  instance_type = "t3.micro"
}