output "vpc_a_bastion_host_IP" {
  value = module.vpc_a_bastion_host.public_ip
}
