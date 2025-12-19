# Placeholder for Nitro Enclave–enabled EC2 nodes
resource "aws_instance" "nitro_node" {
  ami           = "ami-123456"
  instance_type = "m5.xlarge"
}
