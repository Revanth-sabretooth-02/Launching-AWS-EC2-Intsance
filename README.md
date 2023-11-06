# Launching-AWS-EC2-Intsance
Here we create and automate an EC2 instance using Terraform where we can create, modify our instance.
In Terraform we have two states Current State and Desired State, so Terrform ensures that they always match.
Here we a have a file called terraform.tfstate where it shows the changes that have been made, also this is where it stores the information like what has been created and by whom.
This is how it preserves it's state.
We can also restore anything if have done some manual changes in that particular Instance by the state.
Here if we delete the state file accidently named as terraform.tf state, we can also restore the file by using the following command **terraform import aws_instance.<Instance name> id of our EC2 instance**.
Terraform helps us to Delete and create a new Instance if you think that instance has been corrupted, it will simply automate the task and replace it with a new EC2 instance, So we use a command called** terraform taint aws_instance.<instance name>** and if your version is above 0.15.2 use the following command **terraform taint plan -replace=aws_instance<instance name>.
**
