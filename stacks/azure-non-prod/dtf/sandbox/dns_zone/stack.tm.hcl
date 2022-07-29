stack {
  name        = "dns_zone"
  description = "dns_zone"
  id          = "08209354-7bb6-4756-a392-0b37be4c879a"
  after = [
    "../networking"
  ]
  before = [
    "../storage_account",
    "../container_registry"
  ]
  wants = [
    "../networking"
  ]
}
