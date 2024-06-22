eval $(ssh-agent)
ssh-add
docker build -t tinyjulia:v1.1-1.10.4 --ssh default=${SSH_AUTH_SOCK} .
