# Simplic.OxS/Simplic.Ox hosting templates

This repository contains templates and ready-made solution for deploying Simplic.OxS and Simplic.Ox. Scripts are provided for hosting via.

* Docker (single services)
* Docker Compose (dev, staging, small environments)
* Kubernetes Deployment (Large Environments/High Availability)


## Getting started

Before getting started with Simplic.OxS, you need to get access to the simplic docker repository. Please contact us for further information [post@simplic.biz](mailto:post@simplic.biz)

### Login into simplic Azure Container Registry (acr)

First you need to login into azure.

> $ az login

Than connect to az acr

> $ az acr login simplic

## Docker compose

If you are using the docker-compose hosting templates, please execute the init.cmd before starting the services.

> Start init.cmd for the first execution

**Service overview**

* Simplic.Ox: http://localhost:8081/
* SigNoz: http://localhost:3301/
* APIs: http://localhost:8080/v1/{service-name}-api/swagger

`{service-name}` must be replaced with the service name, e.g.: `auth`, `mail`, ...

The routing will be done by the `haProxy` that is delivery with the templates. New services might be added to the `haProxy.cfg`.

### Start docker-compose

If you want to start the infrastructure using docker-compose, just go the the docker-compose directory and execute `.\\up.cmd`

#### Stop docker-compose

If you want to stop the docker-compose infrastructure, execute `.\\down.cmd`. If docker-compose is running in none-deamon mode,
you can cancel everything using `Strg + C`.