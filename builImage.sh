name=$2
version=$1
docker build -t docker-repo111:$version .
aws ecr get-login-password --region us-east-1 --profile rani| docker login --username AWS --password-stdin 503983346536.dkr.ecr.us-east-1.amazonaws.com
docker tag docker-repo111:$version 503983346536.dkr.ecr.us-east-1.amazonaws.com/docker-repo111:$version
docker push 503983346536.dkr.ecr.us-east-1.amazonaws.com/docker-repo111:$version
echo "images sucessfully executed"
