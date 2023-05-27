module "produto" {
  source = "git@github.com:gomex/iac_module_server.git?ref=main"
  instance_type            = "t3.micro"
}