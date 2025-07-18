In an outputs.tf file, create a Terraform output that will display the information needed for the developers to clone a repo along with the name of the owner of the repo.

Acceptance Criteria:

1. In main.tf, create or use an existing repository with the details of your choice in Terraform.
2. In datasources.tf create a data source to retrieve the currently authenticated user.
3. In outputs.tf create an output in the following format replaced with your own information inline. Do not use an external template:

  Login: morethancertified
  URL: 
    HTTP: https://github.com/morethancertified/dev-repo.git
    SSH: git@github.com:morethancertified/dev-repo.git
4. Ensure the formatting is exactly as above with each piece of information on its own line with the HTTP and SSH items indented.
5. Apply and output the information.


