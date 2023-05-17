cd
echo ""
echo "================================================================================="
echo " Creating Keptn project (fulltour) and a Keptn service (helloservice)            "
echo "================================================================================="
keptn create project fulltour --shipyard ./keptn/shipyard.yaml --git-remote-url $GIT_REPO --git-user $GIT_USER --git-token $GITHUB_TOKEN
keptn create service helloservice --project=fulltour