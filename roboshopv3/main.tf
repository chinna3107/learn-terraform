module "component" {

  for_each = var.component

  source         = "./module"
  zone_id        = var.zone_id
  security_group = var.Security_group
  name           = each.value["name"]
  instance_type  = each.value["instance_type"]

}
