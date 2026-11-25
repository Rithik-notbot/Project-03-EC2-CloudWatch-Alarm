# Project 03: EC2 CloudWatch CPU Alarm

## Overview
This project prepares Terraform infrastructure code for an EC2 monitoring server and an Amazon CloudWatch alarm that monitors CPU utilization.

## Objectives
- Configure an EC2 monitoring instance.
- Create a CloudWatch CPU utilization alarm.
- Set the alarm threshold to 70%.
- Monitor EC2 CPU metrics.

## Technologies
- AWS EC2
- Amazon CloudWatch
- Terraform

## Project Files
- `main.tf` – EC2 instance and CloudWatch alarm configuration.
- `versions.tf` – Terraform and AWS provider requirements.
- `outputs.tf` – Terraform outputs.
- `.gitignore` – Files excluded from version control.

## Alarm Configuration
- Metric: CPUUtilization
- Namespace: AWS/EC2
- Statistic: Average
- Period: 300 seconds
- Threshold: 70%
- Evaluation periods: 2
- Comparison: GreaterThanThreshold

## Validation
Terraform formatting and validation were performed locally.

**Result:** Terraform configuration validation successful.

## Deployment Status
Terraform configuration is prepared and validated.

**AWS deployment is pending.** No EC2 instance or CloudWatch alarm was created as part of this local preparation.

## Learning Outcomes
- Understanding EC2 monitoring.
- Configuring CloudWatch metric alarms.
- Using Terraform to define monitoring infrastructure.
- Validating infrastructure code without deploying AWS resources.