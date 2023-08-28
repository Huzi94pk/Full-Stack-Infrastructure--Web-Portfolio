# Full Stack Infrastructure
This project is to Host a wordpress portfolio website on a full stack infrastructure on AWS. The infrastructure was built using the following steps, the outlines all the AWS services and componnets included in the infrastructure. 
#Front End: Wordpress, ALB
#Backend: EC2, Route 53, Security Groups, Target Groups, ACM,
#Platform: AWS
#SSH Tool: Putty
1. Launch an Ubuntu EC2 Instance, and associate a .ppk key for SSH authentication
2. Allocate an Elastic Public IP to the instance
3. Create a Security Group to allow traffic on port 80, 443 and 22
4. Use AWS  DNS to purchase a domain name. I purchased DNS huzaifaportfolio.com
5. Create a Hosted zone Zone huzaifaportfolio.com on Route53. 
6. Retrieve a SSL certificate using Certificate Manager for encrypted connected to your DNS
7. Use putty to SSH into the EC2 instance using the public IP and .ppk key
8. Follow all 17 steps mentioned in the file 'EC2-Ubuntu-Deploy-Wordpress' to setup wordpress on the Ubuntu instance by installing apache2 server, mysql engine, php runtime, and wordpress database. 
9. Login to the wordpress website on huzaifaportfolio.com/wp-login.php, and adjust the permalink to %POSTNAME
10. Place the Ubuntu EC2 instance begind an ALB in AWS. Configure isteners rules on port 80 to redirect traffic to port 443. On port 443, configure listener rule to forward all incoming traffic to the instance. This allows https connections to be made to the EC2 instnace, thus a secured connection to your website.
11. While setting up ALB, create a target group that contains the Ubuntu EC2 instance where wordpress is setup. 
12. On Hoseted Zone in Route 53, create an Alias A record for domain name huzaifaportfolio.com poiting to the ALB. Create a Cname record for subdomain www.huzaifaportfolio.com
13. Login to wordpress using huzaifaportfolio.com/wp-admin.php
14. Ensure the site-address and wordpress address is set to http://huzaifaportfolio.com/
15. Install Astra Theme, Elementor Plugin, Essential Ad ons Plugin, SImply SSL Plugin
16. This step will give you many errors. It took me a month to figure out the errors. Refer to Debug-Errors file to understand the errors. I faced php memory issues,          mixed-content, redirect loop and JSON object errors. 
17. Desgin your portfolio! 

    
