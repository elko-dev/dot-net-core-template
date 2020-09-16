output "app_service_name" {
  value = "${module.appservice.app_service_name}"
}

output "app_service_default_hostname" {
  value = "https://${module.appservice.app_service_default_hostname}"
}