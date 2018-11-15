variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_ACCESS_ACCESS_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}
variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-13be557e"
        us-west-2 = "ami-06b23423"
        eu-west-1 = "ami-0d729a60"
    }
}
variable "instance_username" {}
variable "instance_password" {}