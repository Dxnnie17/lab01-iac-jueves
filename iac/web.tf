resource "docker_container" "web" {
  name  = "web-localhost"
  image = "lab/web"

  ports {
    internal = 80
    external = var.web_port
  }
}

resource "docker_container" "web_dev" {
  name  = "web-dev"
  image = "lab/web"

  ports {
    internal = 80
    external = var.web_dev_port
  }
}