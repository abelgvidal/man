# Kind

## Config example

```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: worker
- role: worker
  extraPortMappings:
  - containerPort: 30000
    hostPort: 30000
  - containerPort: 32001
    hostPort: 32001
```

And then

```ssh
kind create cluster --config example-kind-cluster.yaml
```

