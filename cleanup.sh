kubectl delete -f network-policy.yaml -n planespotter
kubectl delete -f redis_and_adsb_sync_all_k8s.yaml -n planespotter
kubectl delete -f frontend-deployment_all_k8s.yaml -n planespotter
kubectl delete -f app-server-deployment_all_k8s.yaml -n planespotter
kubectl delete -f mysql_pod.yaml -n planespotter
kubectl delete -f mysql_claim.yml -n planespotter
kubectl delete -f persistent-vol.yml  -n planespotter
kubectl delete -f storage-class.yml  -n planespotter
kubectl delete -f nfs-server.yml -n planespotter
kubectl delete ns planespotter