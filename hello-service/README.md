# hello-service project

This project uses Quarkus, the Supersonic Subatomic Java Framework.

If you want to learn more about Quarkus, please visit its website: https://quarkus.io/

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:
```
mvn quarkus:dev
```

## Packaging and running the application

The application can be packaged using `mvn package`.
It produces the `hello-service-1.0.0-SNAPSHOT-runner.jar` file in the `/target` directory.
Be aware that it’s not an _über-jar_ as the dependencies are copied into the `target/lib` directory.

The application is now runnable using `java -jar target/hello-service-1.0.0-SNAPSHOT-runner.jar`.

## Deploy to Kubernetes
- In case you use Minikube: you won’t be using an image registry and will instead make your container image accessible to the Kubernetes cluster by building it directly into Minikube’s Docker daemon. To use Minikube’s Docker daemon you must first execute:
```
eval $(minikube -p minikube docker-env)
```
- Build docker image for your application (refer above step).
```
mvn clean package -Dquarkus.container-image.build=true
```
- Apply generated manifest with:
```
kubectl apply -f target/kubernetes/kubernetes.yml
```
- Delete all related resources in Kubernetes:
```
kubectl delete -f target/kubernetes/kubernetes.yml
```
## Using the application on Kubernetes
- Open default Kubernetes Dashboard:
```
minikube dashboard
```
- Get pods information in the current namespace:
```
kubectl get pods
```
- Get deployment information in the current namespace:
```
kubectl get deployments
```
- Scale a specific deployment to 3 instances:
```
kubectl scale --replicas=3 deployment/hello-service
```
- Delete a specific pod:
```
kubectl delete pod <pod_name>
```
- Get service information in the current namespace:
```
kubectl get services
```
- Get detail information about a specific pod:
```
kubectl describe pod <pod_name>
```
- Get detail information about a specific service:
```
kubectl describe service <service_name>
```
- In the case you use Minikube, use this command to get accessible URL of the service, then you could access with your browser:
```
minikube service hello-service --url
```
- Update service to a newer version by rolling update:
```
kubectl set image deployment/hello-service hello-service=lvphu/hello-service:1.1.0
```
- Undo an update (like Ctrl-Z):
```
kubectl rollout undo deployment/hello-service
```