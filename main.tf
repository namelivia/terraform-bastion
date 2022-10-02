resource "aws_lightsail_instance" "bastion_instance" {
  name = "${var.instance_name}"
  availability_zone = "eu-west-3a"
  key_pair_name = "${var.key_name}"
  blueprint_id = "ubuntu_20_04"
  bundle_id = "micro_2_0"
}
