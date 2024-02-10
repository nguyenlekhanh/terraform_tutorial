#ami-0c7217cdde317cfec
#099720109477

data "aws_ami" "server_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

#create key
#ssh-keygen -t ed25519

resource "aws_key_pair" "main_auth" {
  key_name   = "mainkey"
  public_key = file("~/.ssh/mainkey.pub")
}