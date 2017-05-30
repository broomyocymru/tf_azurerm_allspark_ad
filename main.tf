data "template_file" "init" {
  template = "${file("${path.module}/template.json")}"
}

# Custom Resource Group used as this is the only clean way to destroy a template
resource "azurerm_resource_group" "resource_group" {
  name = "${var.allspark["resource_group_name"]}-ad"
  location = "${var.allspark["location"]}"
}

resource "azurerm_template_deployment" "active_directory" {
  name = "${var.name}"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"

  parameters = {
    adminUsername="${var.admin_username}"
    adminPassword="${var.admin_password}"
    domainName="${var.domain}"
    dnsPrefix="${var.dns_prefix}"
  }

  template_body = "${data.template_file.init.rendered}"

  deployment_mode = "Incremental"
}
