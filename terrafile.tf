module "produto" {
  source        = "git@github.com:gomex/iac_module_server.git?ref=v1.2.1"
  instance_type = "t3.micro"
  sg_group_rule = {
    grafana = {
      cidr_blocks = ["0.0.0.0/0"]
      port        = "3000"
      protocol    = "tcp"
    },
  }
}

output "public_ip" {
  description = "IP publico da instância"
  value       = module.produto.public_ip
}