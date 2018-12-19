# agile-integrations-workshop

## Prerequisites
Must have an OpenShift Environment installed.

## Run Provision Environment

Update the provision_env.sh with cluster admin credentials and hostname to OpenShift Environment

./provision_env.sh

## Or you can run Ansible Playbook

Log into OpenShift Environment

$ ansible-playbook -i install/ansible/inventory/workshop.inventory install/ansible/playbooks/openshift/install.yml

## Delete

$ delete.sh
