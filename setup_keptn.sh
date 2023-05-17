cd

echo "#=================================#"
echo "# Please enter Keptn Project details now    #"
echo "#=================================#"

read -p 'Keptn Project Name: ' KEPTN_PROJECT
read -p 'Keptn Service Name: ' KEPTN_SERVICE_NAME


export KEPTN_PROJECT=$KEPTN_PROJECT
export KEPTN_SERVICE_NAME=$KEPTN_SERVICE_NAME


echo ""
echo "================================================================================="
echo " Creating Keptn project and a Keptn service            "
echo "================================================================================="
keptn create project $KEPTN_PROJECT --shipyard ./keptn/shipyard.yaml --git-remote-url $AZDO_REPO_URL --git-user $AZDO_USER --git-token $AZDO_TOKEN
keptn create service $KEPTN_SERVICE_NAME --project=$KEPTN_PROJECT

echo ""
echo "================================================================================="
echo "Adding Helm Chart to  REPO"
echo "================================================================================="
keptn add-resource --project=$KEPTN_PROJECT --service=$KEPTN_SERVICE_NAME --all-stages --resource=./keptn/helloworld-chart-0.1.0.tgz --resourceUri=charts/$KEPTN_SERVICE_NAME.tgz


# echo ""
# echo "================================================================================="
# echo "Triggering Delivery of the helloservice v0.1.1 Artifact (Follow progress in the Bridge)"
# echo "================================================================================="
keptn trigger delivery \
--project=hello-world \
--service=hello-world-service \
--sequence=delivery \
--image="onoureldin14/hello-world:latest" \
--labels=version="v0.1.1"