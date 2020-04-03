variable "test1" {}
variable "test2" {}
variable "test3" {}

resource "null_resource" "begin2" {
  count = 1
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "uptime ; set"
  }
}

output "test1" {
  value = var.test1
}

output "test2" {
  value = var.test2
}

output "test3" {
  value = var.test3
}
