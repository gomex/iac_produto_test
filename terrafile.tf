module "produto" {
  source        = "git@github.com:gomex/iac_module_server.git?ref=v1.3.0"
  instance_type = "t3.micro"
  sg_group_rule = {
    grafana = {
      cidr_blocks = ["0.0.0.0/0"]
      port        = "3000"
      protocol    = "tcp"
    },
  }
}