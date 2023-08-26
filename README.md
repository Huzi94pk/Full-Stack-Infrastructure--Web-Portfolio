# Full Stack Infrastructure
This project is to Host a wordpress portfolio website on a full stack infrastructure on AWS. The infrastructure was built using the following steps, the outlines all the AWS services and componnets included in the infrastructure. 
1. Launch an Ubuntu EC2 Instance, and associate a .ppk key for SSH authentication
2. Allocate an Elastic Public IP to the instance
3. Create a Security Group to allow traffic on port 80, 443 and 22
4. Use putty to SSH into the EC2 instance using the public IP and .ppk key
5. Follow all 17 steps mentioned in the file 'EC2-Ubuntu-Deploy-Wordpress' to install apache2 server, mysql engine, php directories, and wordpress database into the Ec2       instance
6. Desgin
