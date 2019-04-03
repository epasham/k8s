mkdir /kube
mkdir /mariadb

kubectl create -f wp-pvc.yaml
kubectl create -f mariabd-pv.yaml

helm install --name wordpress --set service.type=NodePort,wordpressUsername=admin,wordpressPassword=admin@password,mariadb.mariadbRootPassword=mariadb@pass,persistence.existingClaim=helm-pvc1,allowEmptyPassword=false stable/wordpress

#To Install with ingress enabled, this will create new ingress for wordpress to work

helm install --name wordpress --set service.type=ClusterIP,ingress.enabled=true,wordpressUsername=admin,wordpressPassword=admin@password,mariadb.mariadbRootPassword=mariadb@pass,persistence.existingClaim=helm-pvc1,allowEmptyPassword=false stable/wordpress

