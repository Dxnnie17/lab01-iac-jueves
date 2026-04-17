resource "docker_image" "api" {
  name = "lab/api:latest"

  build {
    context    = "${path.root}/../src/api"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "api" {
  name  = "api-localhost"
  image = docker_image.api.image_id

  ports {
    internal = 3000
    external = var.api_port
  }
}

resource "docker_image" "api_dev" {
  name = "lab/api-dev:latest"

  build {
    context    = "${path.root}/../src/api"
    dockerfile = "Dockerfile-dev"
  }
}

resource "docker_container" "api_dev" {
  name  = "api-dev"
  image = docker_image.api_dev.image_id

  ports {
    internal = 3000
    external = var.api_dev_port
  }
}
