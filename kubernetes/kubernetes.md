# Kubernetes

## Cluster status

```bash
{ clear && \
  echo -e "\n=== Kubernetes Status ===\n" && \
  kubectl get --raw '/healthz?verbose' && \
  kubectl version --short && \
  kubectl get nodes && \
  kubectl cluster-info; 
} | grep -z 'Ready\| ok\|passed\|running'
```

## Running jobs on the fly

```bash
kubectl run test-source --image=busybox --restart=Never -it --rm --namespace kuard-networkpolicy -- wget --timeout=5 -O- kuard
```
