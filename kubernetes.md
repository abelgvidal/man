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
kubectl run kubernetes-bootcamp 
 --image=docker.io/jocatalin/kubernetes-bootcamp:v1 --port=8080
```
           
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
