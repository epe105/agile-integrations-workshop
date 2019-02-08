# agile-integrations-workshop

## Prerequisites
Must have an OpenShift Environment installed.

You can use either of the OpenShift provsioners from RedHatGov
 - https://github.com/RedHatGov/redhatgov.workshops/tree/master/openshift-aws-setup
 - https://github.com/RedHatGov/redhatgov.workshops/tree/master/openshift_terraform
 - https://github.com/gnunn1/openshift-aws-setup
 - https://github.com/jaredhocutt/openshift-provision
 - https://github.com/bit4man/ansible_agnostic_deployer

We recommend that you provision about 5-10GBs of Memory per User.  For an workshop of 20 people, we recommend 4-6 m4.xlarge app nodes or larger.

## Workshop Configuration

Update the install/ansible/inventory/workshop.inventory file to install the components needed for the workshop.

By setting certain options to true or false, you'll be able to install different parts of the workshop as needed.  Please make sure to edit the inventory file for the OCP hostname variables before running the install.

The default password for all users is "openshift"

## Creating Workshop WebPage

Please update the following values in your install/ansible/inventory/workshop.inventory if creating a Environment Workshop WebPage.

-  creates AWS S3 website for ec2_name_prefix.workshop_dns_zone
    -  create_login_page: true
-  region where the nodes will live
    -  ec2_region: us-east-1    
-  prefix for the subdomain used for workshop page creation.  i.e. subdomain.domain.com
    -  ec2_name_prefix:       
-  Sets the Route53 DNS zone to use for the S3 website.  Used for the domain name of your workshop page.
    -  workshop_dns_zone=       

## Run Provision Environment

Update the provision_env.sh with cluster admin credentials and hostname to OpenShift Environment

./provision_env.sh

## Or you can run Ansible Playbook

Log into OpenShift Environment

$ ansible-playbook -i install/ansible/inventory/workshop.inventory install/ansible/playbooks/openshift/install.yml

## Delete

Update delete.sh script with the amount of users in your environment

$ delete.sh

