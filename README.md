# Simplic.OxS/Simplic.Ox hosting templates

This repository contains templates and ready-made solution for deploying Simplic.OxS and Simplic.Ox. Scripts are provided for hosting via.

* Docker (single services)
* Docker Compose (dev, staging, small environments)
* Kubernetes Deployment (Large Environments/High Availability)


## Getting started

Before getting started with Simplic.OxS, you need to get access to the simplic docker repository. Please contact us for further information [post@simplic.biz](mailto:post@simplic.biz)

### Setup aws cli and aws ecr

1. Retrieve aws `access key id` and `secred access key` from your system administrator
2. Install aws cli [download cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
3. Setup your configuration by calling `aws configure`. Default region should be `eu-central-1` / Default output format `yaml`
4. Login to the aws ecr `aws ecr get-login-password --region eu-central-1| docker login --username AWS --password-stdin 217954882364.dkr.ecr.eu-central-1.amazonaws.com`

> Important! After a few hours you might need to login again into the ecr and execute the 4th step again.

## Docker compose

If you are using the docker-compose hosting templates, please execute the init.cmd before starting the services.

> Start init.cmd for the first execution

*Env file*

When executing the init.cmd file, a `.env.dev` file will be created. For overriding settings and setting API keys,
use that file.

> Troubleshooting: Compare `.env.dev.template` with your actual `.env.dev` file, if some services or images are missing.

**Service overview**

* Simplic.Ox: http://localhost:8081/
* SigNoz: http://localhost:3301/
* APIs: http://localhost:8080/{service-name}-api/v1/swagger

`{service-name}` must be replaced with the service name, e.g.: `auth`, `mail`, ...

The routing will be done by the `haProxy` that is delivery with the templates. New services might be added to the `haProxy.cfg`.

### Start docker-compose

If you want to start the infrastructure using docker-compose, just go the the docker-compose directory and execute `.\\up.cmd`

> Important! `:latest` images will only be updated, when adding the argument `pull`. E.g.: `.\\up.cmd pull`.

#### Stop docker-compose

If you want to stop the docker-compose infrastructure, execute `.\\down.cmd`. If docker-compose is running in none-detach mode,
you can cancel everything using `Ctrl + C`.

### Add a new Simplic.OxS-Service to the template

1. Create new asp.net core project in a new solution. Naming convention: `Simplic.OxS.<ServiceName>.Server`. Solution name: `simplic-oxs-<service-name>`.
2. Reference Simplic.OxS.Server using nuget