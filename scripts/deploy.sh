echo ${DEPLOYMENT_GROUP_ID} >> /home/ubuntu/cicd/deploy.log
echo ${DEPLOYMENT_ID} > /home/ubuntu/cicd/deploy.log

docker build ../. -t cicd_test
docker ps -q --filter "name=cicd_test" | grep -q . && docker container kill cicd_test
docker run -d --rm --name cicd_test -p 8888:8080 cicd_test