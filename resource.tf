// Service Definition with v2.2 Schema Definition
resource "datadog_service_definition_yaml" "service_definition_v2_2" {
  service_definition = <<EOF
schema-version: v2.2
dd-service: shopping-cart
team: e-commerce-team
contacts:
  - name: Support Email
    type: email
    contact: team@shopping.com
  - name: Support Slack
    type: slack
    contact: https://www.slack.com/archives/shopping-cart
description: shopping cart service responsible for managing shopping carts
tier: high
lifecycle: production
application: e-commerce
languages: 
  - go
  - python
type: web 
ci-pipeline-fingerprints:
  - fp1 
  - fp2 
links:
  - name: shopping-cart runbook
    type: runbook
    url: https://runbook/shopping-cart
  - name: shopping-cart architecture
    type: doc
    provider: gdoc
    url: https://google.drive/shopping-cart-architecture
  - name: shopping-cart service Wiki
    type: doc
    provider: wiki
    url: https://wiki/shopping-cart
  - name: shopping-cart source code
    type: repo
    provider: github
    url: http://github/shopping-cart
tags:
  - business-unit:retail
  - cost-center:engineering
integrations:
  pagerduty: 
    service-url: https://www.pagerduty.com/service-directory/Pshopping-cart
extensions:
  mycompany.com/shopping-cart:
    customField: customValue
EOF
}