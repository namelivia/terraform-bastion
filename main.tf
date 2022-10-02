resource "aws_lightsail_key_pair" "deployer" {
  name   = "${var.instance_name}-key"
  public_key = "${var.ssh_key}"

}

resource "aws_lightsail_instance" "lightsail_instance" {
  name = "${var.instance_name}"
  availability_zone = "eu-west-3a"
  key_pair_name = "${var.instance_name}-key"
  blueprint_id = "ubuntu_20_04"
  bundle_id = "micro_2_0"
}
