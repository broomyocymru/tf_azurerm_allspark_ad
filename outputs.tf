output "allspark_data" {
  value = {
    name = "${var.name}"
    private_ip = "${azurerm_template_deployment.active_directory.outputs["private_ip"]}"
  }
}
