# Q7: Expose application with NodePort and scale to 3 replicas

### 1. Create `service-nodeport.yaml`

Create a file named `service-nodeport.yaml` with the following content:

[service-nodeport.yaml](./service-nodeport.yaml)

### 2. Apply the Service

Run the following command to apply the service:

```bash
kubectl apply -f service-nodeport.yaml
```

Verify the service creation:

```bash
kubectl get svc student-portal-nodeport
```

**Expected Output:**
```
NAME                      TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)          AGE
student-portal-nodeport   NodePort   10.96.x.y      <none>        5000:30080/TCP   10s
```

### 3. Find Node IP

Find the node IP (for a single-node cluster, use the node's IP; for minikube you can use `minikube ip`).

On Linux / cloud K8s, get nodes:

```bash
kubectl get nodes -o wide
```

Use the `EXTERNAL-IP` or `INTERNAL-IP` column value.

### 4. Access the Service

Example if node IP is `192.168.1.100` and nodePort `30080`:

```bash
curl http://192.168.1.100:30080 | head -n 10
```

You should see the HTML response of the Flask app.

**Expected Output:**
```html
<!doctype html>...
```

### 5. Scale Deployment to 3 Replicas

Scale the deployment `student-portal-deploy` to 3 replicas:

```bash
kubectl scale deployment student-portal-deploy --replicas=3
```

Verify the pods:

```bash
kubectl get pods -l app=student-portal
```

**Expected Output:**
```
NAME                                     READY   STATUS    RESTARTS   AGE
student-portal-deploy-66b8c6f5f9-abcde   1/1     Running   0          1m
student-portal-deploy-66b8c6f5f9-bghij   1/1     Running   0          10s
student-portal-deploy-66b8c6f5f9-klmno   1/1     Running   0          10s
```
