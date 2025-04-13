## This example repository follows the tutorial described at https://www.hashicorp.com/en/blog/access-aws-from-hcp-terraform-with-oidc-federation
In summary, this sets up OIDC federated credentials between a HCP workspace named *tfcloud-awss3* in a project named *demoproject1* in an organization named *redwidgets* in HCP and AWS. This is allowed to assume a role with S3 full access. 

## HCP terraform login
First create a user token on HCP Terraform portal https://app.terraform.io and copy the token. Next run **terraform login** on command line, following by pasting the token into CLI prompt for **terraform login** . Once this is done, the token is saved at /Users/myusername/.terraform.d/credentials.tfrc.json and will be used by the tfe provider

## AWS login
Use SSO with **aws configure sso** and then copying the name of the **profile** and using it in the AWS provider configuration block

## tfstate backend
This example uses local tfstate backend. You can also use HCP to store tfstate using **cloud** block in the terraform block configuration, but if you do so it will assume that plan and apply will also be done from HCP and you will need to provide AWS credentials for HCP workspace. It does not seem possible to just use HCP for tfstate storage while running and executing from local machine. 
