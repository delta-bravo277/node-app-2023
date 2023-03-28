1. Create a ECR private repository 
2. Create a workflow to build and push docker image to ECR when any code push is done
    2a. create a IAM user for Github CI workflow to access ECR repo and to access ECS cluster
        ECR ->   AmazonEC2ContainerRegistryPowerUser 
        (Provides full access to Amazon EC2 Container Registry repositories, but does not allow repository deletion or policy changes.)

        ECS -> AmazonECS_FullAccess
    2b. Add secret manager policy to user if any (inline policy)
    
    2c. Store this user's access key ID and secret in Github Repo secrets section
   
    2d. Configure Workflow -> Login to Amazon ECR
    2e. Configure Workflow -> Build, tag, and push docker image to Amazon ECR

==================================================

For image tagging : 

    github.run_number -> appends current number of github workflow as docker image tag 
                        (also count failed workflow)
    