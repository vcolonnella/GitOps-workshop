kubectl port-forward svc/argocd-server -n argocd 8083:443 &> /dev/null &
kubectl port-forward -n monitoring svc/kube-prometheus-stack-grafana 10000:80 &> /dev/null &
