echo -n "ArgoCD: "
kubectl get secret -n argocd argocd-initial-admin-secret --template={{.data.password}} | base64 --decode ; echo
echo -n "Grafana: "
kubectl get secret --namespace monitoring kube-prometheus-stack-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
