# Add output variables
output "subnet_id" {
  value = aws_subnet.public_subnet[*].id
}

output "vpc_id" {
  value = aws_vpc.main.id
}





output "public_subnet_ids" {
  description = "List of Public Subnet IDs created by the module"
  # This references the IDs of the subnets created in main.tf
  value       = aws_subnet.public_subnet[*].id 
}
