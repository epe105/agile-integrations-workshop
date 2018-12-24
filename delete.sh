hostname=""
cluster_admin=
cluster_admin_password=""

begin=1
count=1

oc login "$hostname" --insecure-skip-tls-verify -u $cluster_admin -p $cluster_admin_password

for (( i = $begin; i <= $count; i++ )); do
  oc delete project user${i}
  oc delete project tools${i}
done

oc delete project gogs
oc delete project microcks
oc delete project 3scale
oc delete project international
oc delete project apicurio
oc delete project sso
