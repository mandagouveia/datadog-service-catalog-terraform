locals {
    services = jsondecode(file("${path.module}/${var.services_file}"))
    services_by_team = {
        for service in local.services: "${service.team}/${service.name}" => service
    }
    service_definition_defaults = {
       //campos opcionais 
    }

}