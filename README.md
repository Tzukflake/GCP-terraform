# GCP-terraform

# Google Cloud DevOps Project: CI/CD Pipeline using GitHub Actions and Terraform

This project demonstrates the use of GitHub Actions to automate infrastructure provisioning and management on Google Cloud Platform (GCP) using Terraform. The focus is on setting up a CI/CD pipeline that automatically deploys cloud resources whenever changes are made to the repository.

## Project Purpose

The goal of this project is to showcase a DevOps pipeline where infrastructure is managed as code (IaC) using Terraform, and changes are automatically deployed using GitHub Actions. By integrating GCP, Terraform, and GitHub Actions, the project aims to automate the deployment of cloud resources like Google Cloud Storage buckets and ensure infrastructure consistency across environments.

## Key Features

- **Automated Infrastructure Deployment**: Infrastructure changes are automatically applied to GCP when changes are pushed to the repository's `main` branch.
- **Infrastructure as Code (IaC)**: Using Terraform, the project defines the configuration for Google Cloud resources such as storage buckets, ensuring version-controlled, repeatable deployments.
- **CI/CD Integration**: GitHub Actions is used to run Terraform commands (`terraform init`, `terraform plan`, `terraform apply`), automating the process of validating and applying infrastructure changes.
- **Google Cloud Integration**: Resources are provisioned on GCP, including setting up a Google Cloud Storage bucket with specific configurations such as `force_destroy` and `public_access_prevention`.

## Technologies Used

- **Google Cloud Platform (GCP)**: The project provisions resources on GCP, leveraging its cloud infrastructure services.
- **Terraform**: Terraform is used to define and manage the GCP infrastructure as code.
- **GitHub Actions**: CI/CD automation is achieved using GitHub Actions to execute Terraform commands and deploy infrastructure changes automatically.
- **GitHub Secrets**: Sensitive information such as GCP credentials is securely stored in GitHub Secrets to protect access to cloud resources.

## Project Components

- **Terraform Configuration**: The main Terraform configuration (`main.tf`) defines the Google Cloud Storage bucket and its settings, such as the location, storage class, and public access restrictions.
- **GitHub Actions Workflow**: A GitHub Actions workflow (`terraform.yml`) is used to automate the Terraform lifecycle, applying changes automatically upon commits to the `main` branch.
- **Google Cloud Service Account**: A service account with the necessary permissions (e.g., Storage Admin) is used to authenticate Terraform and allow it to manage GCP resources.

## How It Works

1. **Commit Changes**: Whenever changes are committed to the repository (e.g., modifications to Terraform configurations), the GitHub Actions pipeline is triggered.
2. **Terraform Execution**: The pipeline runs Terraform commands (`init`, `plan`, `apply`) to validate and apply changes to GCP.
3. **Resource Deployment**: The Google Cloud Storage bucket is created or updated automatically as defined in the Terraform configuration.
4. **CI/CD Automation**: This ensures continuous deployment of infrastructure updates in an automated and reliable way.

---

This project provides a foundational setup for managing cloud infrastructure with Terraform and GitHub Actions, making it easier to implement Infrastructure as Code (IaC) and automate cloud resource management within a CI/CD pipeline.
