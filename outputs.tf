output "instance_id" {
  description = "ID of the EC2 monitoring instance"
  value       = aws_instance.monitoring_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.monitoring_server.public_ip
}

output "cloudwatch_alarm_name" {
  description = "Name of the CloudWatch CPU alarm"
  value       = aws_cloudwatch_metric_alarm.high_cpu.alarm_name
}