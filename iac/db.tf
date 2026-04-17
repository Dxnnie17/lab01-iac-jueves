resource "docker_container" "db" {
  name  = "bd-localhost"
  image = "postgres:latest"

  ports {
    internal = 5432
    external = var.db_port
  }

  env = [
    "POSTGRES_PASSWORD=postgres"
  ]
}

resource "docker_container" "db_dev" {
  name  = "bd-dev"
  image = "postgres:latest"

  ports {
    internal = 5432
    external = var.db_dev_port
  }

  env = [
    "POSTGRES_PASSWORD=postgres"
  ]
}
