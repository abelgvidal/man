# Kubernetes 

- Namespaces

K8s uses _namespaces_ to organize objects in the cluster. Default namespace is called `namespace`.

```kubectl --namespace=default```

- Contexts

Change default namespace more permanently.

```kubectl config set-context my-context --namespace=my-namespace```
