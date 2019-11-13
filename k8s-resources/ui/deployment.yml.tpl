apiVersion: apps/v1
kind: Deployment
metadata:
  name: balena-web-${DEPLOYMENT_ENVIRONMENT}
  namespace: ${DEPLOYMENT_ENVIRONMENT}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: balena-web-${DEPLOYMENT_ENVIRONMENT}
  template:
    metadata:
      labels:
        app: balena-web-${DEPLOYMENT_ENVIRONMENT}
    spec:
      containers:
      - name: balena-web
        image: idreeskun/test-bear-image
        imagePullPolicy: Always
        ports:
        - containerPort: 5000
        resources:
            requests:
              memory: "512Mi"
              cpu: "500m"
            limits:
              memory: "1Gi"
              cpu: "1000m"
        readinessProbe:
            httpGet:
              path: /health 
              port: 5000
            periodSeconds: 10
            timeoutSeconds: 10
            successThreshold: 1
            failureThreshold: 10
        livenessProbe:
          httpGet:
            path: /health
            port: 5000
          initialDelaySeconds: 10