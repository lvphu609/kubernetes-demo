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