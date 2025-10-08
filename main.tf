resource "aws_instance" "jenkins_server" {
  ami = "${var.server_ami}"
  instance_type = "${var.server_type}"

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_storage_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }


  tags ={
    Name = "${var.server_name}"
    Owner = "${var.server_owner}"
    CanBeDeleted = "${var.server_can_be_deleted}"
  }  

}

resource "aws_key_pair" "own_ssh_key"{
    public_key = "${var.public_ssh_key}"
}

resource "aws_security_group" "local_security_group" 