version=$BUILD_ID
docker build -t repo-new1$version .
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 503983346536.dkr.ecr.us-east-1.amazonaws.com
docker tag repo-new1:$version 503983346536.dkr.ecr.us-east-1.amazonaws.com/repo-new1:$version
docker push 503983346536.dkr.ecr.us-east-1.amazonaws.com/repo-new1:$version
echo "Image Successfully pused to ecr"
