# Autoscaling rules for managing our API pods
apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler
metadata:
  name: balena-api-autoscaler-${DEPLOYMENT_ENVIRONMENT}
  namespace: ${DEPLOYMENT_ENVIRONMENT}
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: balena-api-${DEPLOYMENT_ENVIRONMENT}
  minReplicas: 1
  maxReplicas: 6
  targetCPUUtilizationPercentage: 50
 