resource "null_resource" "begin2" {
  count = 1
  provisioner "local-exec" {
    command = "uptime"
  }
}
