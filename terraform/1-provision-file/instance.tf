resource "aws_instance" "example" {
    ami = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"

    provisioner "file" {
        source = "script.sh"
        destination = "/opt/script.sh"
        connection  {
            user = "${var.instance_username}"
            password = "${var.instance_password}"
        }
    }
}

