# Hello World Example

A simple Node.js Express application showcasing how to deploy an application with the Sploosh.AI on-premises VM setup.

## Local Development

```bash
# Navigate to this example directory
cd examples/hello-world

# Build and run locally
docker-compose up --build

```

## Deployment

> **Note:** Automatic deployment is temporarily disabled until coordination with the infrastructure team for project setup is complete.

**Important Context:** This hello-world project is technically configured for deployment to the Sploosh.AI environment as a subdomain and project. However, since this repository serves primarily as a template and reference implementation, the deployment workflow has been intentionally disabled to prevent accidental deployments from unsuspecting engineers.

To deploy this application:

1. Contact the infrastructure team to set up the necessary deployment environment
2. Once the environment is ready, the deployment workflow will be re-enabled by removing the `if: false` condition in the GitHub workflow
3. After re-enabling, pushes to the main branch will automatically deploy to the production environment

This repository is available as a public template in the SplooshAI GitHub organization.
