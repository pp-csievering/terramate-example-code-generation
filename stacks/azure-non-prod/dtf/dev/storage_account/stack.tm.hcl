stack {
  name        = "storage_account"
  description = "storage_account"
  id          = "d7ad60bf-6db3-4a1e-b702-26f2eaf53cb8"
  after = [
     "../container_registry",
     "../../sandbox/container_registry"
  ]
}
