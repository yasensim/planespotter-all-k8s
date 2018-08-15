. ./demo-magic.sh

clear 

DEMO_PROMPT="root@k8s-master$"


pe "kubectl create ns planespotter"
#kubectl config set-context kubernetes-admin@kubernetes --namespace planespotter
pe "kubectl get ns"
pe "vimcat nfs-server.yml"
pe "kubectl create -f nfs-server.yml -n planespotter"
pe "kubectl get all -n planespotter -o wide"
pe "vimcat storage-class.yml"
pe "kubectl create -f storage-class.yml  -n planespotter"
pe "kubectl get sc "
pe "vimcat persistent-vol.yml"
pe "kubectl create -f persistent-vol.yml  -n planespotter"
pe "kubectl get persistentvolume"
pe "vimcat mysql_claim.yml"
pe "kubectl create -f mysql_claim.yml -n planespotter"
pe "kubectl get pvc -n planespotter"
pe "vimcat mysql_pod.yaml"
pe "kubectl create -f mysql_pod.yaml -n planespotter"
pe "vimcat redis_and_adsb_sync_all_k8s.yaml"
pe "kubectl create -f redis_and_adsb_sync_all_k8s.yaml -n planespotter"

pe "watch kubectl get all -n planespotter -o wide"
pe "vimcat app-server-deployment_all_k8s.yaml"
pe "kubectl create -f app-server-deployment_all_k8s.yaml -n planespotter"
pe "watch kubectl get all -n planespotter -o wide"
pe "vimcat frontend-deployment_all_k8s.yaml"
pe "kubectl create -f frontend-deployment_all_k8s.yaml -n planespotter"
pe "watch kubectl get all -n planespotter -o wide"
pe "vimcat network-policy.yaml"
pe "kubectl apply -f network-policy.yaml -n planespotter"
