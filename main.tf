data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "monitoring_server" {
  ami           = data.aws_ami.al2023.id
  instance_type = "t2.micro"

  tags = {
    Name        = "Project-03-Monitoring-Server"
    Environment = "Testing"
    ManagedBy   = "Terraform"
  }
}

resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "project-03-high-cpu-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "Triggers when EC2 CPU utilization exceeds 70% for two periods."

  dimensions = {
    InstanceId = aws_instance.monitoring_server.id
  }
}