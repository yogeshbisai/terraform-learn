output "ec2_pub_ip" {
    value = aws_instance.example.public_ip
  
}

output "pub_dns" {
    value = aws_instance.example.public_dns
}

output "priv_ip" {
    value = aws_instance.example.private_ip
  
}

