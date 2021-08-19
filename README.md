### Highly Available Infrastructure using Cloudformation 

In order to create the infrastructure run:
- ./create.sh network
- ./create.sh servers

If a bastion host is desired remove the comment by "KeyName" in the templates/servers.yml before creating
In order to create bastion host run:
- ./create.sh bastion

In order to tear down infrastructure run:
- ./delete.sh bastion
- ./delete.sh servers
- ./delete.sh network

### Link to running application

http://iac-s-webap-1ahpalx35pw46-469044066.eu-central-1.elb.amazonaws.com/
