# README.md

This repo contains files and folders that allows you to Enable Macie on the AWS Sandbox Account.

What resource are created:

- Macie - Enabled
    - publishing frequency 15 minutes
    - Findings filter
    - associates s3 bucket to store macie data
    - classification type FULL

USAGE:

```bash
• e.g. terraform init -backend-config="./vars/dev/backend.hcl" -backend-config="profile=***your AWS profile***"