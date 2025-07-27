# sec-ms-buildagent

docker build -t ubuntu-ssh-devops .
docker run -d -p 2222:22 ubuntu-ssh-devops
ssh devops@localhost -p 2222


ansible-playbook test_playbook.yml  --ask-become-pass

export AZP_TOKEN=asd
ansible-playbook playbook.yml --ask-become-pass --extra-vars 