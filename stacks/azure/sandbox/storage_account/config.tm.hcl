

globals {
  environment = "sandbox"
  resource_group = "${global.project}_${global.environment}_sa"


  tagblock= {
    environment = global.environment
    project     = global.project
  }
}
