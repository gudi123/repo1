version=$BUILD_ID
sudo bash
docker build -t docker-repo123 .
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 503983346536.dkr.ecr.us-east-1.amazonaws.com
docker tag docker-repo123:latest 503983346536.dkr.ecr.us-east-1.amazonaws.com/docker-repo123:latest
docker push 503983346536.dkr.ecr.us-east-1.amazonaws.com/docker-repo123:latest
echo "images sucessfully executed"
