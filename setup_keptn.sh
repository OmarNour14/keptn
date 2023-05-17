cd
echo ""
echo "================================================================================="
echo " Creating brand new Git repo ($GIT_NEW_REPO_NAME) on your GitHub.com account     "
echo "================================================================================="
gh repo create $GIT_NEW_REPO_NAME --public

echo ""
echo ""
echo "================================================================================="
echo " Creating Keptn project (hello-world) and a Keptn service (hello-world-service)            "
echo "================================================================================="
keptn create project hello-world --shipyard ./keptn/shipyard.yaml --git-remote-url $GIT_REPO --git-user $GIT_USER --git-token $GITHUB_TOKEN
keptn create service hello-world-service --project=hello-world