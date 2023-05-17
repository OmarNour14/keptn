echo "#=================================#"
echo "# Please enter Git details now    #"
echo "#=================================#"

read -p 'Azure DevOps User: ' AZDO_USER
read -p 'Azure DevOps Token: ' AZDO_TOKEN
read -p 'Azure DevOps Repo name: ' AZDO_REPO_NAME


export AZDO_USER=$AZDO_USER
export AZDO_REPO_NAME=$AZDO_REPO_NAME
export AZDO_REPO_URL="https://youlend@dev.azure.com/youlend/Youlend-Infrastructure/_git/$AZDO_REPO_NAME"
export AZDO_TOKEN=$AZDO_TOKEN

echo ""
echo "#=================================#"
echo "         Git Details Set:          "
echo "#=================================#"
echo ""
echo "Azure DevOps Token: $AZDO_TOKEN"
echo "Azure DevOps repo: $AZDO_REPO_URL"
