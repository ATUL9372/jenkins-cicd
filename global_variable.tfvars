#// provider Config

region = ""
access_key = ""
secret_key = ""

#// EC2 Instances (server) Config

server_name = ""
server_ami = ""
server_type = ""
// EC2 Tags
server_owner = ""
server_can_be_deleted = ""


#// storage

volume_type = ""           //gp2, gp3, io1, io2, sc1, st1, standard
volume_storage_size = ""  
delete_on_termination = "true"

#// SSH-Key Key Pair 

public_ssh_key = 