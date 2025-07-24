FROM redhat/ubi8

RUN yum install python3 -y

COPY . .

CMD [ "python3", "test.py"]