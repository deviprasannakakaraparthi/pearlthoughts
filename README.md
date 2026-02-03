# EC2 basic setup with terraform 
In this folder i launced the  ec2 instance with the help of terraform script 

Terraform is a infrastructure as code , which means we can manage the infrastructure ( cloud platforms ) with the help of code using terraform 
Terraform is based on HCL That means hashicorp configuration language 

Here the things i coverd is :
 Created the ec2 with sg rules using terraform 
 Provisions an EC2 instance using Terraform
 Creates a Security Group with inbound rules
 And alos craeted the output.tf which return s the  public ip of ec2 

  * SSH (port 22)
  * HTTP (port 80)
## How to Use
### Initialize Terraform
terraform init 
## validate 
terraform validate 
### Review the Plan
terraform plan
### Create the Infrastructure
terraform apply
Type yes when prompted.
## Output
After successful execution, Terraform will display the public IP address of the EC2 instance.

## Cleanup
To delete all resources created by Terraform:
bash
terraform destroy
