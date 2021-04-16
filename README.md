# Django Redis Demo

Django Rest Framework api with a connection to a Redis DB that handle different CRUD operations.


# Installation
1. Install [Redis](https://redis.io/topics/quickstart).
2. Create a virtual environment:
    ```
    $ virtualenv --python=python3 env --no-site-packages
    $ source env/bin/activate
    ```

3. Install the requirements

    ```
    $ pip install -r requirements.txt
    ```

4. Create .env file taking as an guide the .env.example

# Run

## Run locally


```
$ python manage.py runserver
```

## Docker
1. Build Image:
    ```
    $ sudo docker build -t carogomezt/django_redis_demo .
    ```
2. Push Image to Docker Hub:
    ```
    $ docker push carogomezt/django_redis_demo:latest
    ```
3. Run in Docker Compose:
    ```
    $ sudo docker-compose up
    ```
## Kubernetes with minikube

1. Start the cluster
    ```
    $ minikube start
    ```
2. Get into the k8s commands:
    ```
    $ cd k8s
    ```
3. Create the nginx-config configmap:
    ```
    $ kubectl create configmap nginx-config --from-file=../config/nginx/default.conf
    ```
4. Deploy k8s infra
    ```
    $ kubectk apply -f .
    ```
5. Get the External IP to access the server locally with minikube:
    ```
    $ minikube service --url django-app-service
    ```
6. Check resources status:
    ```
    $ kubectl get all
    ```
7. If there is any problem validate the logs and pod description:
    ```
    $ kubectl describe pods <pod_name>
    $ kubectl logs <pod_name>
    ```

## Azure

Change k8s context:

```
 az aks get-credentials --resource-group MyResourceGroup --name MyAKS
```
Create the Storage Class to save files:
- [Dynamically create and use a persistent volume with Azure Files in Azure Kubernetes Service (AKS)](https://docs.microsoft.com/en-us/azure/aks/azure-files-dynamic-pv)