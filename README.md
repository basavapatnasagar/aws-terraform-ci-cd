# aws-terraform-ci-cd
Automates AWS infrastructure (EC2, VPN, Security Groups) using Terraform with state stored in S3 &amp; locked via DynamoDB. CI/CD pipeline in GitLab handles automated plan and apply, ensuring safe, repeatable, version-controlled deployments.

# Terraform AWS Infrastructure with GitLab CI/CD

This project demonstrates the automation of AWS infrastructure provisioning using **Terraform**, with a complete **CI/CD pipeline** implemented in **GitLab**. The infrastructure includes:

- **EC2 Instances**: For hosting applications.
- **VPN Configuration**: To securely connect to the AWS environment.
- **Security Groups**: To manage access controls.
- **State Management**: Utilizing **S3** for storing Terraform state files and **DynamoDB** for state locking, ensuring safe concurrent operations.

## Architecture Overview

The architecture encompasses:

- **VPC**: Virtual Private Cloud to isolate resources.
- **Subnets**: Both public and private subnets for resource segregation.
- **Internet Gateway**: To allow communication between instances and the internet.
- **NAT Gateway**: For outbound internet access from private subnets.
- **Security Groups**: To define inbound and outbound traffic rules.
- **EC2 Instances**: Deployed in private subnets for enhanced security.
- **DynamoDB Table**: For Terraform state locking to prevent concurrent modifications.

## GitLab CI/CD Pipeline

The `.gitlab-ci.yml` file defines the pipeline stages:

1. **Validate**: Ensures the Terraform configuration files are syntactically correct.
2. **Plan**: Creates an execution plan, showing the changes Terraform will make.
3. **Apply**: Applies the changes required to reach the desired state of the configuration.

The pipeline utilizes Docker to run Terraform commands and manages state files securely using AWS S3 and DynamoDB.

## Prerequisites

Before setting up the project, ensure you have:

- An **AWS Account** with necessary permissions.
- **Terraform** installed on your local machine.
- **GitLab** account with a repository to host the project.
- **AWS CLI** configured with appropriate credentials.
