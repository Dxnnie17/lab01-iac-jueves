resource "docker_container" "web" {
  name  = "web-localhost"
  image = "lab/web"

  ports {
    internal = 80
    external = var.web_port
  }
}