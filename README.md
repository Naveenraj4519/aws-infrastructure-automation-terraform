
# AWS Infrastructure Automation using Terraform

## Project Overview

This project demonstrates how to provision AWS infrastructure using Terraform (Infrastructure as Code).

It deploys an Apache web server on an Amazon Linux 2023 EC2 instance inside a custom VPC.

## Technologies Used

- AWS EC2
- AWS VPC
- AWS Subnet
- Internet Gateway
- Route Tables
- Security Groups
- Terraform
- Amazon Linux 2023
- Apache HTTP Server
- Git and GitHub

## Architecture

Internet
    |
Internet Gateway
    |
Public Route Table
    |
Public Subnet (10.0.1.0/24)
    |
EC2 Instance (t3.micro)
    |
Apache Web Server
    |
HTML Website

## Infrastructure Components

- Custom VPC: 10.0.0.0/16
- Public subnet: 10.0.1.0/24
- Internet Gateway for internet connectivity
- Public route table
- Security group allowing inbound HTTP traffic
- EC2 instance running Amazon Linux 2023
- Apache installed automatically through user data

## Deployment Steps

1. Install Terraform and AWS CLI.
2. Configure AWS credentials securely.
3. Clone this repository.
4. Initialize Terraform:

   terraform init

5. Validate the configuration:

   terraform validate

6. Review the deployment plan:

   terraform plan

7. Deploy the infrastructure:

   terraform apply

8. Retrieve the EC2 public IP:

   terraform output ec2_public_ip

9. Open http://EC2_PUBLIC_IP in a browser.

## Cleanup

To remove the infrastructure and avoid ongoing AWS charges:

terraform destroy

## Future Improvements

- S3 remote Terraform state
- GitHub Actions CI/CD
- HTTPS and domain configuration
- Infrastructure monitoring
