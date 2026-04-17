resource "docker_container" "api" {
  name  = "api-localhost"
  image = "lab/api"

  ports {
    internal = 3000
    external = var.api_port
  }
}

resource "docker_container" "api_dev" {
  name  = "api-dev"
  image = "lab/api"

  ports {
    internal = 3000
    external = var.api_dev_port
  }
}
