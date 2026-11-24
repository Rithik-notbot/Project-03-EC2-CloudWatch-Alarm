# Project 03: EC2 State Monitoring with CloudWatch

## Objective
Deploy an EC2 instance and monitor its CPU utilization using an Amazon CloudWatch alarm.

## Tools Used
- Terraform
- AWS EC2
- Amazon CloudWatch
- Git
- GitHub

## Implementation
1. Select the latest Amazon Linux 2023 AMI dynamically.
2. Define a t2.micro EC2 instance.
3. Create a CloudWatch CPU utilization alarm.
4. Configure the alarm to trigger when average CPU utilization exceeds 70% for two consecutive five-minute periods.

## Monitoring Configuration
- Metric: CPUUtilization
- Namespace: AWS/EC2
- Threshold: 70%
- Evaluation periods: 2
- Period: 300 seconds
- Statistic: Average

## Security
- No inbound access rules are added.
- No AWS credentials are stored in the project.
- Terraform state files are excluded from Git.

## Deliverables
- Terraform configuration files.
- GitHub repository.
- CloudWatch alarm screenshot.
- EC2 monitoring evidence.

## Status
Configuration prepared. AWS deployment and monitoring tests pending company approval.