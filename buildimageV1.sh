version=$1
name=$2
echo $name
docker build -t docker-repo222 .
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 503983346536.dkr.ecr.us-east-1.amazonaws.com
docker tag docker-repo222:latest 503983346536.dkr.ecr.us-east-1.amazonaws.com/docker-repo222:$version
docker push 503983346536.dkr.ecr.us-east-1.amazonaws.com/docker-repo222:$version
