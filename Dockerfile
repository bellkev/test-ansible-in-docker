FROM python:2.7.9

RUN pip install ansible

ADD . /opt/test-ansible-in-docker

CMD ansible-playbook /opt/test-ansible-in-docker/hello_world.yml