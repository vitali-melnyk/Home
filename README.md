# Home

Command for lesson #3

# create docker image
docker build -t alp-git:1.0 -f Dockerfile.alp .
docker build -t alp-git:2.0 -f Dockerfile2.alp .
docker build -t nginx-git:2.0 -f Dockerfile.nginx .

# local check
docker run --rm  -v /tmp:/data alp-git:1.0
docker run --rm  -v /tmp:/data alp-git:2.0 https://github.com/vitali-melnyk/Home.git
docker run -e MY_NAME=VITALI -d -p 8080:80 nginx-git:2.0

# prepare to push into the docker-hub
docker tag 7fd59a4c082b vitalimelnyk/docker-home:1.0

# push to the docker-hub
docker push vitalimelnyk/docker-home:1.0

# pull from the docker-hub
docker pull vitalimelnyk/docker-home:1.0
