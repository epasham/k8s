#Install Nginx-ingress controller in baremetal 

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/baremetal/service-nodeport.yaml


NB: If ingress-controller is running on Nodeport check for nodeport addresss to connect and the DNS also should resolve
http://test.akomljen.com:31183/app1
http://test.akomljen.com:31183/app2
