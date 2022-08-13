Prerequisites : Code editor (Vscode, Atom, etc), Setup Terraform on your local machine, Setup Terraform in Visual Studio Code, Having an AWS account and an AWS IAM user with the appropriate permissions to perform the necessary actions, Install AWS CLI based on your operating system.

Clone the code to your code editor with git clone command git clone https://github.com/Assassin010/AWS-Lambda-and-DyanomoDB-to-retrieve-secrets-stored-in-AWS-Secrets-Manager-using-Terraform

Deployment Steps: In your terminal Run these commands below (-)

-Terraform init

Initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control. It is safe to run this command multiple times.

-Terraform plan

The terraform plan command lets you to preview the actions Terraform would take to modify your infrastructure, or save a speculative plan which you can apply later.

-Terraform apply-auto-approve To deploy the infra


TEST event creation

*For First Lambda, 2nd, 3rd and 4th respectively codes(lambda_function.py, lambda_function1.py,lambda_function2.py) 

Login to AWS console create a Test event - to your lambda function all of them one by one.
Click on the Test button.
In Configure test event:
Event name: Enter any word, exmaple: test

Event JSON: replace put this below
{
  "key1": "HASH"
}

Go back to your lambdas code one by one in the aws console click on Test to apply the code

IMPORTANT: To test the second one wait until the dynamodb table (first table) and items are created 

To test the third one wait until secret manager and dynamodb table 2 are created
once done go to your 4th lambda in aws console click on test.


To see the expected output from every Lambda go to medium page: https://bit.ly/3C4RTvN






