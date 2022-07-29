stack {
  name        = "private_endpoints"
  description = "private_endpoints"
  id          = "61f8e19c-a521-4ca9-8139-948fa4a79554"
  after = [
    "../container_registry",
    "../storage_account"
  ]
}
