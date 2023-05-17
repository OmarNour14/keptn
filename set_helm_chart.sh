cd
mkdir helm
cd helm

echo "#=================================#"
echo "# Adding the stable helm repo    #"
echo "#=================================#"

helm repo add stable https://charts.helm.sh/stable

echo ""
echo "#=================================#"
echo "# Generate the helm chart for hello world  #"
echo "#=================================#"

helm create hello-world

echo ""
echo "#=================================#"
echo "# Package the hello world chart  #"
echo "#=================================#"

helm package helm/hello-word/
