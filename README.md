# Lab01 - Infrastructure as Code

## Descripción
Infraestructura en Docker con Frontend, Backend y Base de Datos, desplegada con Terraform.

**2 Entornos**: Producción (localhost) y Desarrollo (dev)

## Puertos

### Producción
- **Frontend**: http://localhost:4001
- **Backend**: http://localhost:4002
- **Base de Datos**: localhost:4003

### Desarrollo
- **Frontend**: http://localhost:5001
- **Backend**: http://localhost:5002
- **Base de Datos**: localhost:5003

## Comandos

### Inicializar Terraform
```bash
cd iac/
terraform init
```

### Ver plan de despliegue
```bash
terraform plan
```

### Desplegar infraestructura
```bash
terraform apply
```

### Destruir infraestructura
```bash
terraform destroy
```

### Ver contenedores activos
```bash
docker ps
```

## Archivos Terraform

- `main.tf` - Configuración principal
- `variables.tf` - Variables del proyecto
- `terraform.tfvars` - Valores de las variables
- `providers.tf` - Configuración del provider Docker
- `network.tf` - Redes Docker
- `api.tf` - Backend API
- `web.tf` - Frontend
- `db.tf` - Base de Datos

