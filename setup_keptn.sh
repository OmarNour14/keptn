cd
echo ""
echo ""
echo "================================================================================="
echo " Creating Keptn project (hello-world) and a Keptn service (hello-world-service)            "
echo "================================================================================="
keptn create project hello-world --shipyard ./keptn/shipyard.yaml --git-remote-url $AZDO_REPO_URL --git-user $AZDO_USER --git-token $AZDO_TOKEN
keptn create service hello-world-service --project=hello-world

# echo ""
# echo "================================================================================="
# echo "Adding Helm Chart (hello-world.tgz) to Git REPO"
# echo "================================================================================="
# keptn add-resource --project=hello-world --service=hello-world-service --all-stages --resource=./helm/hello-world-0.1.0.tgz --resourceUri=charts/hello-world-0.1.0.tgz


# echo ""
# echo "================================================================================="
# echo "Triggering Delivery of the helloservice v0.1.1 Artifact (Follow progress in the Bridge)"
# echo "================================================================================="
# keptn trigger delivery \
# --project=hello-world \
# --service=hello-world-service \
# --sequence=delivery \
# --image="hello-world:0.1.0" \
# --labels=version="v0.1.1"