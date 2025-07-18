**Ticket Type:** Task  
**Title:** Configure Terraform and the AWS Provider  
**Project:** Cloud Infrastructure Deployment  
**Assignee:** You  
**Reporter:** Derek Morgan  
**Priority:** High  
**Labels:** Terraform, AWS, Providers  
**Epic Link:** AWS Infrastructure Expansion  
**Sprint:** Sprint 01/Providers

**Lab Setup**
This lab uses Localstack to simulate an AWS environment. Localstack is already preinstalled in your environment. You don't need keys or to configure the provider. If you'd like to use your own account, feel free to specify your provider configuration and run `unset aws` and `unset terraform` to decouple them from Localstack.

**Description:**

As part of our cloud infrastructure strategy, we need to configure and initialize Terraform to ensure that any minor version above Terraform 1.0 (1.1, 1.2, etc.) is used and ensure AWS Provider version 5.0.0 and its **patch** versions, except 5.0.1, are allowed: e.g. 5.0.0, 5.0.2 are all fine, but not 5.0.1, 5.1.0, or 5.2.0.

**Acceptance Criteria:**

1. Create a `providers.tf` file that configures Terraform to use any minor version above 1.0.  
2. Configure the AWS provider to use version 5.0.0 and its patch versions, except 5.0.1.  
3. Set the AWS region to us-east-1.  
4. Validate your configuration with `terraform validate`.

**Implementation Notes:**

> **Important:** If the `terraform validate` command fails, all tasks in the lab will fail!

- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs" target="_blank">AWS Provider Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/resources" target="_blank">Terraform Resources Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/providers/configuration" target="_blank">Terraform Provider Configuration</a>  
- <a href="https://developer.hashicorp.com/terraform/language/providers/requirements" target="_blank">Terraform Provider Requirements</a>  
- <a href="https://developer.hashicorp.com/terraform/cli/commands/init" target="_blank">Terraform Init Command</a>
