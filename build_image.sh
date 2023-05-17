cd ./keptn/app
docker build -t hello-world .

echo ""
echo "#=================================#"
echo "# Please enter Docker details now    #"
echo "#=================================#"

read -p 'Docker Username: ' DOCKER_USER
echo 'Docker Password: ' && read -s  DOCKER_PSSWD

export DOCKER_USER=$DOCKER_USER
export DOCKER_PSSWD=$DOCKER_PSSWD

docker login --username $DOCKER_USER --password $DOCKER_PSSWD

echo ""
echo "================================================================================="
echo " Tagging the Docker Image            "
echo "================================================================================="

docker tag hello-world $DOCKER_USER/hello-world

echo ""
echo "================================================================================="
echo " Pushing Docker Image            "
echo "================================================================================="

docker push $DOCKER_USER/hello-world:latest

cd ..
echo ""
echo "================================================================================="
echo " Packaging Helm chart            "
echo "================================================================================="
helm package ./app/helloworld-chart/ --debug

cd


