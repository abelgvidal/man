# Kubernetes 

- create cluster

``` 
 gcloud container clusters create kubernetes-lab1 \
  --disk-size 100 \
  --zone europe-west1-d \
  --enable-cloud-logging \
  --enable-cloud-monitoring \
  --machine-type n1-standard-2 \
  --num-nodes 3
```

`kubectl cluster-info`

`kubectl get nodes`

```
kubectl run my-nginx --image=nginx --replicas=2 --port=80
```
           
`kubectl expose deployment my-nginx --port=80 --type=LoadBalancer`
           
`kubectl get deployments`

`kubectl proxy`

```
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME
```

`curl http://localhost:8001/api/v1/proxy/namespaces/default/pods/$POD_NAME/`

`kubectl describe pods`

`kubectl logs $POD_NAME`

`kubectl exec $POD_NAME env`

`kubectl exec -ti $POD_NAME bash`

`kubectl delete deployment my-nginx


## Resources

Dashboard

- Dashboard (do not do this in public clusters, this will open 31000 on every node to expose dashboard)
  kubectl apply -f https://gist.githubusercontent.com/initcron/32ff89394c881414ea7ef7f4d3a1d499/raw/4863613585d05f9360321c7141cc32b8aa305605/kube-dashboard.yaml 
  
Visualizer

- git clone https://github.com/schoolofdevops/kube-ops-view && kubectl apply -f kube-ops-view/deploy/ 
