apiVersion: v1
kind: Service
metadata:
  name: balena-api-service-${DEPLOYMENT_ENVIRONMENT} 
  namespace: ${DEPLOYMENT_ENVIRONMENT}
  labels:
    app: balena-api-${DEPLOYMENT_ENVIRONMENT}
  annotations:
    prometheus.io/scrape: 'true'
    prometheus.io/path: /metrics
spec:
  selector:
    app: balena-api-${DEPLOYMENT_ENVIRONMENT}
  type: NodePort
  ports:
   - protocol: TCP
     port: 80
     targetPort: 5000
