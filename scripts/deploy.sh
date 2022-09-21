echo "-----start-----" > /home/ubuntu/cicd/deploy.log
ls . >> /home/ubuntu/cicd/deploy.log
sudo docker build . -t cicd_test
echo "-----after build" >> /home/ubuntu/cicd/deploy.log
ls ../ >> /home/ubuntu/cicd/deploy.log
sudo docker ps -q --filter "name=cicd_test" | grep -q . && docker container kill cicd_test
sudo docker run -d --rm --name cicd_test -p 8888:8080 cicd_test