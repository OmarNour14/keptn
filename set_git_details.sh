echo "#=================================#"
echo "# Please enter Git details now    #"
echo "#=================================#"
read -p 'Git Username: ' GIT_USER
read -p 'Git Token: ' GITHUB_TOKEN
read -p 'Git Repo: ' GIT_REPO_NAME

export GIT_REPO=https://github.com/$GIT_USER/$GIT_REPO_NAME.git
export GIT_USER=$GIT_USER
export GITHUB_TOKEN=$GITHUB_TOKEN
export GIT_REPO_NAME=$GIT_REPO_NAME

echo ""
echo "#=================================#"
echo "         Git Details Set:          "
echo "#=================================#"
echo ""
echo "Git Username: $GIT_USER"
echo "Git Token: $GITHUB_TOKEN"
echo "Git repo: $GIT_REPO"