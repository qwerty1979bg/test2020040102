resource "null_resource" "begin2" {
  count = 1
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "uptime ; set"
  }
}
