# Deploying a Bastion Host on AWS insfrastructure using Terraform
Deploying a Bastion Host on AWS infrastructure

A bastion host is a server whose purpose is to provide access to a private network from an external network, such as the Internet. Because of its exposure to potential attack, a bastion host must minimize the chances of penetration. For example, you can use a bastion host to mitigate the risk of allowing SSH connections from an external network to the Linux instances launched in a private subnet of your Amazon Virtual Private Cloud (VPC).

Architecture Diagram:

![alt text](/images/Diagram.png)

Terraform Apply Output:
```
Apply complete! Resources: 12 added, 0 changed, 0 destroyed.
```

Testing:
Bastion Host with Public IP in Public Subnet:
![alt text](/images/bastion.png)

Private Host without Public IP in Private Subnet:
![alt text](/images/private.png)

Private Host Security group with only inbound from Bastion Host Security Group
![alt text](/images/securitygroup.png)

Connecting to Private Host from Bastion Host. 
You will need to create key pair with correct permissions on bastion host before connecting to Private Host
```
chmod 0400 WorkshopKeyPair.pem
ssh ec2-user@10.1.2.71 -i WorkshopKeyPair.pem
```
![alt text](/images/testing.png)


Terraform Destroy Output:
```
Destroy complete! Resources: 12 destroyed.
```