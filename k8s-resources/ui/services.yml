apiVersion: v1
kind: Service
metadata:
  name: balena-web-service-${DEPLOYMENT_ENVIRONMENT}
  namespace: ${DEPLOYMENT_ENVIRONMENT}
  labels:
    app: balena-web-${DEPLOYMENT_ENVIRONMENT}
  annotations:
    prometheus.io/scrape: 'true'
    prometheus.io/path: /metrics
spec:
  selector:
    app: balena-web-${DEPLOYMENT_ENVIRONMENT}
  type: NodePort
  ports:
   - protocol: TCP
     port: 80
     targetPort: 3000
