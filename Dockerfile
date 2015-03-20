FROM python:2.7.9

RUN pip install ansible

ADD . /opt/test-ansible-in-docker

RUN printf '[local]\\nlocalhost\\n' > /opt/local

CMD ansible-playbook /opt/test-ansible-in-docker/hello_world.yml -i /opt/local