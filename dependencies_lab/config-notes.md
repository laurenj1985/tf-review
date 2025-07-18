Ticket Type: Task
Title: Create two repositories and a new branch
Project: Version Control System Deployment
Assignee: You
Reporter: Derek Morgan
Priority: High
Labels: Terraform, GitHub
Epic Link: GitHub Expansion
Sprint: Sprint 01/Dependencies

Description:

The development team needs repositories for their latest application. They need a backend repository and a frontend repository. Each repository also needs a branch called “development.” Ensure references to other resources are not hardcoded.

Due to some automations that are listening for these repositories to be created, the backend repository needs to be completely created before the frontend repository creation should begin. You will need to create an explicit dependency to ensure this happens properly.

Acceptance Criteria:

1. Create a repository for backend code called “backend” with a resource name of “backend_repo”.
2. Create a repository for frontend code called “frontend” with a resource name of “frontend_repo”.
3. Ensure the backend repository is completely deployed before the frontend using an explicit dependency.
4. Create branches for each repository called “development”. Ensure any references to other resources are dynamic and not hardcoded.
5. Set both repositories to automatically initialize.

Implementation Notes:

- https://registry.terraform.io/providers/integrations/github/latest/docs
-https://developer.hashicorp.com/terraform/tutorials/configuration-language/dependencies
