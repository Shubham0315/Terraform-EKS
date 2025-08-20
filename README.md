# Terraform-EKS

- Install terraform on Laptop/VM. We need to configure terraform to connect with AWS account and create required resources with EKS cluster.
- Here our EKS cluster will have auto scaling which creates VMs or EC2 instances as per traffic. We will set up the auto scaling limits here. Here EC2 instances are also known as worker nodes.
- We will also create SG to see how EKS cluster in a VPC looks like


- For terraform installed on our local to connect AWS account we can use AWS CLI. Then we can execute to create resources
  - First create access key and then run **aws configure** in local

<img width="1530" height="239" alt="image" src="https://github.com/user-attachments/assets/03c8de99-68f2-401d-9803-be9d398030cf" />
<img width="1123" height="172" alt="image" src="https://github.com/user-attachments/assets/3f902475-ec6c-46d6-8779-acf5b69d90fc" />

  - Now to connect terraform on local to AWS console. When we run "aws configure", security credentials are store on our machine which are used by terraform to connect to AWS

Best Practices for writing Terraform files
-
- Use separate files for different resources
- Try to use modules if possible (repeatable code). We can check if inbuilt modules are available for resources from where we can take code for resources. Written inside source and version

<img width="666" height="86" alt="image" src="https://github.com/user-attachments/assets/28b1e603-f468-4185-a461-80ab92f7c45d" />

- Suppose we're writing aws vpc module, we can provide path of the module from documentation as its inbuilt and pass values to variables required to create VPC.

<img width="1916" height="767" alt="image" src="https://github.com/user-attachments/assets/e8f3b998-97ab-4ce8-90d7-39ee20c18c02" />

- Inside the module documentation, go to examples - complete to get reference of values required to write in as a code.
