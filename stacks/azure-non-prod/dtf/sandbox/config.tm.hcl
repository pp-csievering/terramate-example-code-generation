globals {
  tenant_env = "sandbox"
  hub_network= {
		vnet_cidr= ["10.50.240.0/20"]
		azurefirewallsubnet_cidr= ["10.50.240.0/26"]
		gatewaysubnet_cidr= ["10.50.240.64/26"]
		private_endpoints_cidr= ["10.50.255.0/24"]
		shared_dns_cidr= ["10.50.240.128/27"]
	}
}