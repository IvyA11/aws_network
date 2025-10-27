
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
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the created VPC"
}

# Your deployment's output.tf expects the name 'public_subnet_ids'
output "public_subnet_ids" {
  value       = aws_subnet.public_subnet.*.id
  description = "The IDs of the created public subnets"
}
