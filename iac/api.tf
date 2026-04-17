# Build de la imagen Docker para la API
resource "docker_image" "api" {
  name = "lab/api:latest"

  build {
    context    = "${path.root}/../src/api"
    dockerfile = "Dockerfile"
  }
}

# Contenedor de la API
resource "docker_container" "api" {
  name  = "lab-api"
  image = docker_image.api.image_id

  ports {
    internal = 3000
    external = var.api_port
  }

  restart_policy = "always"

  env = [
    "PORT=3000"
  ]
}
