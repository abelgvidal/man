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

```kubectl run kubernetes-bootcamp 
           --image=docker.io/jocatalin/kubernetes-bootcamp:v1 --port=8080```
           
'kubectl get deployments`
