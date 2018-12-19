hostname=""
cluster_admin=
cluster_admin_password=""

oc login "$hostname" --insecure-skip-tls-verify -u $cluster_admin -p $cluster_admin_password

ansible-playbook -i install/ansible/inventory/workshop.inventory install/ansible/playbooks/openshift/install.yml
