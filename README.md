# Simplic.OxS/Simplic.Ox hosting templates

This repository contains templates and ready-made solution for deploying Simplic.OxS and Simplic.Ox. Scripts are provided for hosting via.

* Docker (single services)
* Docker Compose (dev, staging, small environments)
* Kubernetes Deployment (Large Environments/High Availability)


## Getting started

Before getting started with Simplic.OxS, you need to get access to the simplic docker repository. Please contact us for further information [post@simplic.biz](mailto:post@simplic.biz)

### Login into simplic Azure Conterin Registry (acr)

First you need to login into azure.

> $ az login

Than connect to az acr

> $ az acr login simplic

## Docker compose

> Start init.cmd for the first execution