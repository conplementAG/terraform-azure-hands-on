# IaC Terraform Azure Hands-on Workshop

### Prerequisites
1. Git (https://git-scm.com/downloads)
2. Docker (https://docs.docker.com/get-docker/)

## Workshop

### 0. Introduction and IaC basics

Explain:
- Azure basics / Azure portal
- Principles:
    - Declarative resource definition
    - Idempotency
    - Simplicity
    - Convention over configuration

### 1. Setup environment and terraform
1. get azure subscription and service principal data (subscription id, tentant id etc.) from the workshop team
2. create `src/config.env` based on file `src/config.env.template` and fill env variables

### 2. Connect to the docker container

- build docker container (see `Readme_Docker.md`)
- start docker container (see `Readme_Docker.md`)

### --- Run all following commands in the docker container's bash ---

### 3. Init terraform and create terraform workspace

```bash
. ./terraform-init.sh
```

### 4. Plan terraform with first azure resource (resource group)
copy content of folder `01_resource_group` to folder `src`
```bash
. ./terraform-plan.sh
```

### 5. Check resources in Azure portal
[Azure Portal](https://portal.azure.com/)

### 6. Apply terraform with first azure resource (resource group)
```bash
. ./terraform-apply.sh
```

### 7. Plan/Apply terraform with further azure resource (key vault as module)
copy content of folder `02_module_keyvault` to folder `src`
```bash
. ./terraform-plan.sh
```
```bash
. ./terraform-apply.sh
```

### 8. Plan/Apply terraform with data for key vault
copy content of folder `03_module_keyvault_secret` to folder `src\modules\keyvault`
```bash
. ./terraform-plan.sh
```
```bash
. ./terraform-apply.sh
```

### 9. Check resources in Azure portal again
[Azure Portal](https://portal.azure.com/)

### 10. Destroy resources with terraform destory
```bash
. ./terraform-destroy.sh
```
