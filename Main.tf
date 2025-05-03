resource "aws_instance" "example" {
  //instance_type = values(var.ec2_instance_type_map)[count.index]
  count =1
  instance_type = "t2.micro"
  ami           = var.ec2_ami_id // Replace with a valid AMI ID
  lifecycle {
     prevent_destroy = false
  }
}