JOB=icp-cloudant-backup

echo Deleting job
kubectl delete job $JOB

echo Creating job
kubectl create -f ../resources/icp-cloudant-backup-job.yaml

kubectl describe job $JOB