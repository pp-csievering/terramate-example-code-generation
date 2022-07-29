stack {
  name        = "networking"
  description = "networking"
  id          = "33905ebb-0297-439e-8e64-31c18487d090"
  before = [
    "../storage_account",
    "../container_registry",
    "../dns_zone",
    "../private_endpoint"
  ]
}
