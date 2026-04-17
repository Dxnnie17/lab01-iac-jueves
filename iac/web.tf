resource "docker_image" "web" {
  name = "lab/web:latest"

  build {
    context    = "${path.root}/../src/web/web/web01"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "web" {
  name  = "web-localhost"
  image = docker_image.web.image_id
  networks_advanced {
    name = docker_network.app.name
  }

  ports {
    internal = 80
    external = var.web_port
  }
}

resource "docker_image" "web_dev" {
  name = "lab/web-dev:latest"

  build {
    context    = "${path.root}/../src/web/web/web02"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "web_dev" {
  name  = "web-dev"
  image = docker_image.web_dev.image_id
  networks_advanced {
    name = docker_network.app_dev.name
  }

  ports {
    internal = 80
    external = var.web_dev_port
  }
}