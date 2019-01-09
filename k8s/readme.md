# Kubernetes 

## Namespaces

K8s uses _namespaces_ to organize objects in the cluster. Default namespace is called `namespace`.

```kubectl --namespace=default```

## Contexts

Change default namespace more permanently.

Create a context:

```kubectl config set-context my-context --namespace=my-namespace```

Make a given context the default:

```kubectl config use-context my-context```

Contexts can also be used to manage different clusters or different users for authenticating to those clusters using the --users or --clusters flags.

## Labels

Put label

```kubectl label pods my-pod color=red```

Remove label

```kubectl label pods my-pod color-```
