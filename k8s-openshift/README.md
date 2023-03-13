### First POD
*minikube start
*minikube ip
*kubectl create -f .\pod-define.yaml
*kubectl expose pod myfirstpod --name myfirstpodsvc --port=80 --type=NodePort