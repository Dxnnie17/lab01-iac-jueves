resource "docker_network" "app" {
  name = "app-network"
}

resource "docker_network" "app_dev" {
  name = "app-network-dev"
}
