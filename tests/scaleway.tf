provider "scaleway" { }

variable "os" {
  type = "string"
  default = "Ubuntu Xenial"
}

data "scaleway_image" "ubuntu" {
  architecture = "x86_64"
  name = "${var.os}"
}

resource "scaleway_server" "ansible_test_server" {
  name = "${uuid()}"
  image = "${data.scaleway_image.ubuntu.id}"
  type = "C2S"
}

resource "scaleway_ip" "base" {
  server = "${scaleway_server.ansible_test_server.id}"
  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.ip},' test.yml -u root --private-key=id_rsa"
  }
}
