# Run Q6 using these commands inside the Q6 directory

# 1. Apply the deployment configuration to the cluster
kubectl apply -f deployment.yaml

# 2. Verify that the deployment was created successfully
kubectl get deployments

# 3. Check the status of the pods to ensure they are running
kubectl get pods -l app=student-portal

# 4. (Optional) Check the logs of one of the pods
# Replace <pod-name> with the actual name from step 3
# kubectl logs <pod-name>
