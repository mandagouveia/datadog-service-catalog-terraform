// Service Definition with v2.2 Schema Definition
resource "datadog_service_definition_yaml" "service_definition_v2_2" {
  for_each = locals.services_metadata

  service_definition = templatefile("${path.module}/templates/service-definition-template.yaml",
  merge(local.service_definition_defaults, each.value
      )
    )
  }