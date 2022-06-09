## Get Started

The AWS Accounts repo can be developed and tested locally using Docker.

The repository is responsible for bootstrapping the foundational components of company XYZ's AWS accounts which include:

1. `xyz-master`
2. `xyz-production`
3. `xyz-staging`
4. `xyz-qa`
5. `xyz-shared-services`

Staff should login to `xyz-shared-services` using their own credentials and can assume certain roles within any of the other accounts depending on access granted.

Each account has a `terraform` role with admin access and a `staff-read-only` role. Staff can assume both of these roles for `xyz-qa` while for the other accounts, only the `staff-read-only` is assumbale.

---

## Prerequisites

You will need the following applications installed before starting:

1.  [Docker](https://docs.docker.com/install/)
2.  [Cmder](https://cmder.net/) -- Recommended. This is a Portable console emulator for Windows users only. On Macs you can use Terminal instead.

---

## Quick Start

```bash
# Change directory to the repository
cd aws-accounts

# Copy the environments file and edit your variables accordingly, you should use your own AWS credentials in the .env file
cp .env.dist .env

# Build docker image and run serverless functions locally
make docker-start
```

The entire `aws-accounts` root directory is mounted within the `/aws-accounts` directory within the container.
This means any files created/edited from either the host machine or container will be reflected in both realtime.

---

## Deploy Infrastructure using Terraform

**1. Start the docker container and SSH into it**

```bash
make docker-start
make docker-connect
```

**2. Deploy using Terraform**

In the container, run the following

```bash
1. cd terraform/accounts/shared-services
2. terraform apply
```

---

### All `make` commands

| Command | Action |
| ------- | ------ |
| `docker-start` | Start the docker container |
| `docker-restart` | Restart the docker container |
| `docker-stop` | Stop the docker container |
| `docker-connect` | SSH into the docker container |