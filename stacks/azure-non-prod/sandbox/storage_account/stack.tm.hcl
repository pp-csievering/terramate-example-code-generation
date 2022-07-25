stack {
  name        = "storage_account"
  description = "storage_account"
  id          = "6e0fd7c7-97f0-4838-b26f-e204bcb17bb9"
  wants = [
    "azure-non-prod/sandbox/container_registry"
  ]
}
